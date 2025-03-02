import 'package:bot_toast/bot_toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/models/deleted_records_model.dart';
import 'package:memory_box_avada/models/simple_collection_model.dart';
import 'package:memory_box_avada/models/user_model.dart';
import 'package:memory_box_avada/utils/duration_converter.dart';
import 'package:uuid/uuid.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Uuid uuid = const Uuid();
  String get uid => FirebaseAuth.instance.currentUser?.uid ?? '';

  Future<void> createUser(String userId, String phoneNumber) async {
    try {
      final userDoc = await _firestore.collection('users').doc(userId).get();
      if (userDoc.exists) {
        return;
      }
      await _firestore.collection('users').doc(userId).set({
        'userId': userId,
        'phoneNumber': phoneNumber,
        'audiosCount': 0,
        'subscription': 'initial',
        'duration': '0:00:00.000000',
      });
    } catch (e) {
      print(e);
    }
  }

  Future<Duration> _getTotalUserDuration() async {
    final userRef = _firestore.collection('users').doc(uid);
    final userDoc = await userRef.get();
    String currentDurationString =
        userDoc.data()?['duration'] ?? '0:00:00.000000';
    return const DurationConverter().fromJson(currentDurationString);
  }

  Future<Duration> _getTotalCollectionDuration(String collectionId) async {
    QuerySnapshot collectionSnapshot = await _firestore
        .collection('users')
        .doc(uid)
        .collection('collections')
        .where('id', isEqualTo: collectionId)
        .get();

    if (collectionSnapshot.docs.isEmpty) {
      return Duration.zero;
    }

    var collectionDoc = collectionSnapshot.docs.first;

    String currentDurationString =
        collectionDoc['duration'] ?? '0:00:00.000000';

    return const DurationConverter().fromJson(currentDurationString);
  }

  Future<void> saveUserAudio(
    String title,
    String downloadUrl,
    Duration duration,
  ) async {
    try {
      final currentDuration = await _getTotalUserDuration();
      final newTotalDuration = currentDuration + duration;

      await _firestore.collection('users').doc(uid).collection('audios').add({
        'id': uuid.v1(),
        'title': title,
        'url': downloadUrl,
        'duration': duration.toString(),
        'creationTime': Timestamp.now(),
      });

      await _firestore.collection('users').doc(uid).update({
        'audiosCount': FieldValue.increment(1),
        'duration': newTotalDuration.toString(),
      });
    } catch (e) {}
  }

  Future<void> deleteAudiosFromCollection(
    List<AudioRecordsModel> audiosList,
    String collectionId,
  ) async {
    try {
      QuerySnapshot collectionSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('collections')
          .where('id', isEqualTo: collectionId)
          .get();

      if (collectionSnapshot.docs.isNotEmpty) {
        var collectionDoc = collectionSnapshot.docs.first;

        List<dynamic> audiosListInCollection =
            collectionDoc['audiosList'] ?? [];

        Duration currentDurationString = const DurationConverter()
            .fromJson(collectionDoc['duration'] ?? '0:00:00.000000');

        for (var audio in audiosList) {
          currentDurationString -= audio.duration;
          audiosListInCollection
              .removeWhere((audioData) => audioData['id'] == audio.id);
        }

        await _firestore
            .collection('users')
            .doc(uid)
            .collection('collections')
            .doc(collectionDoc.id)
            .update({
          'duration': currentDurationString.toString(),
          'audiosList': audiosListInCollection,
          'audioCount': FieldValue.increment(
            -audiosList.length,
          ),
        });

        print('Аудіозаписи успішно видалено з колекції!');
      } else {
        print('Колекція не знайдена!');
      }
    } catch (e) {
      print('Помилка при видаленні аудіозаписів: $e');
    }
  }

  Future<void> saveUserCollection(
    String title,
    String collectionDescription,
    List<AudioRecordsModel> audiosList,
    String imageUrl,
  ) async {
    try {
      Duration totalDuration = Duration.zero;
      for (var audio in audiosList) {
        totalDuration += audio.duration;
      }
      List<Map<String, dynamic>> serializedAudiosList =
          audiosList.map((audio) => audio.toJson()).toList();
      await _firestore
          .collection('users')
          .doc(uid)
          .collection('collections')
          .add({
        'id': uuid.v1(),
        'title': title,
        'collectionDescription': collectionDescription,
        'audiosList': serializedAudiosList,
        'imageUrl': imageUrl,
        'audioCount': audiosList.length,
        'duration': totalDuration.toString(),
        'creationTime': Timestamp.now(),
      });
    } catch (e) {}
  }

  Future<void> updateCollectionById({
    required String collectionId,
    required String newTitle,
    required String newDescription,
    required String newImageUrl,
  }) async {
    try {
      QuerySnapshot collectionSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('collections')
          .where('id', isEqualTo: collectionId)
          .get();

      if (collectionSnapshot.docs.isNotEmpty) {
        var collectionDoc = collectionSnapshot.docs.first;

        Map<String, dynamic> updatedData = {};

        updatedData['title'] = newTitle;
        updatedData['collectionDescription'] = newDescription;

        if (newImageUrl.isNotEmpty) {
          updatedData['imageUrl'] = newImageUrl;
        }

        await _firestore
            .collection('users')
            .doc(uid)
            .collection('collections')
            .doc(collectionDoc.id)
            .update(updatedData);

        print('Collection updated successfully!');
      } else {
        print('Collection not found!');
      }
    } catch (e) {
      print('Error updating collection: $e');
    }
  }

  Future<void> addAudiosToCollections(
    List<AudioRecordsModel> audios,
    List<SimpleCollectionModel> collections,
  ) async {
    try {
      for (SimpleCollectionModel collection in collections) {
        QuerySnapshot collectionSnapshot = await _firestore
            .collection('users')
            .doc(uid)
            .collection('collections')
            .where('id', isEqualTo: collection.id)
            .get();

        if (collectionSnapshot.docs.isNotEmpty) {
          var collectionDoc = collectionSnapshot.docs.first;
          List<dynamic> audiosList = collectionDoc['audiosList'] ?? [];

          Duration currentDuration = Duration.zero;
          String durationString = collectionDoc['duration'] ?? '0:00:00.000000';
          currentDuration = const DurationConverter().fromJson(durationString);

          for (var audio in audios) {
            QuerySnapshot audioSnapshot = await _firestore
                .collection('users')
                .doc(uid)
                .collection('audios')
                .where('id', isEqualTo: audio.id)
                .get();

            if (audioSnapshot.docs.isNotEmpty) {
              var audioDoc = audioSnapshot.docs.first;
              Map<String, dynamic> audioData =
                  audioDoc.data() as Map<String, dynamic>;

              if (!audiosList
                  .any((existingAudio) => existingAudio['id'] == audio.id)) {
                audiosList.add(audioData);

                currentDuration += audio.duration;

                await _firestore
                    .collection('users')
                    .doc(uid)
                    .collection('collections')
                    .doc(collectionDoc.id)
                    .update(
                  {
                    'audiosList': audiosList,
                    'audioCount': FieldValue.increment(1),
                    'duration': currentDuration.toString(),
                  },
                );
              }
            }
          }
        }
      }
      print('Аудіозаписи успішно додано до колекцій!');
    } catch (e) {
      print('Помилка під час додавання аудіозаписів до колекцій: $e');
    }
  }

  Future<void> updateAudioTitleInCollectionById({
    required String collectionId,
    required String audioId,
    required String newTitle,
  }) async {
    try {
      QuerySnapshot collectionSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('collections') // Виправлено назву колекції
          .where('id', isEqualTo: collectionId)
          .get();

      if (collectionSnapshot.docs.isNotEmpty) {
        var collectionDoc = collectionSnapshot.docs.first;

        List<dynamic> audiosList = List.from(collectionDoc['audiosList'] ?? []);

        for (var audio in audiosList) {
          if (audio['id'] == audioId) {
            audio['title'] = newTitle;
            break;
          }
        }

        await _firestore
            .collection('users')
            .doc(uid)
            .collection('collections')
            .doc(collectionDoc.id)
            .update({'audiosList': audiosList});

        print('Назву аудіозапису в колекції успішно оновлено!');
      } else {
        print('Колекція не знайдена!');
      }
    } catch (e) {
      print('Помилка при оновленні назви аудіозапису в колекції: $e');
    }
  }

  Future<void> updateAudioTitleById({
    required String audioId,
    required String newTitle,
  }) async {
    try {
      QuerySnapshot collectionSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('audios')
          .where('id', isEqualTo: audioId)
          .get();

      if (collectionSnapshot.docs.isNotEmpty) {
        var audioDoc = collectionSnapshot.docs.first;

        Map<String, dynamic> updatedData = {};

        updatedData['title'] = newTitle;

        await _firestore
            .collection('users')
            .doc(uid)
            .collection('audios')
            .doc(audioDoc.id)
            .update(updatedData);

        print('Collection updated successfully!');
      } else {
        print('Collection not found!');
      }
    } catch (e) {
      print('Error updating collection: $e');
    }
  }

  Future<void> deleteAudio(String audioTitle) async {
    try {
      QuerySnapshot audioSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('audios')
          .where('title', isEqualTo: audioTitle)
          .get();

      final currentDuration = await _getTotalUserDuration();

      if (audioSnapshot.docs.isNotEmpty) {
        for (var doc in audioSnapshot.docs) {
          final newTotalDuration = currentDuration -
              const DurationConverter().fromJson(doc['duration']);
          await _firestore
              .collection('users')
              .doc(uid)
              .collection('deletedAudios')
              .add({
            'id': doc['id'],
            'title': doc['title'],
            'url': doc['url'],
            'duration': doc['duration'],
            'deletedAt': Timestamp.now(),
            'creationTime': doc['creationTime'],
          });
          await _firestore.collection('users').doc(uid).update({
            'audiosCount': FieldValue.increment(-1),
            'duration': newTotalDuration.toString(),
          });
          await _firestore
              .collection('users')
              .doc(uid)
              .collection('audios')
              .doc(doc.id)
              .delete();
        }
      } else {}
    } catch (e) {}
  }

  Future<void> deleteAudioFromDeletedCollection(String audioTitle) async {
    try {
      QuerySnapshot audioSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('deletedAudios')
          .where('title', isEqualTo: audioTitle)
          .get();

      if (audioSnapshot.docs.isNotEmpty) {
        for (var doc in audioSnapshot.docs) {
          await _firestore
              .collection('users')
              .doc(uid)
              .collection('deletedAudios')
              .doc(doc.id)
              .delete();
        }
      } else {}
    } catch (e) {}
  }

  Future<void> deleteSeveralAudiosFromDeletedCollection(
    List<DeletedRecordsModel> records,
  ) async {
    try {
      for (DeletedRecordsModel record in records) {
        QuerySnapshot audioSnapshot = await _firestore
            .collection('users')
            .doc(uid)
            .collection('deletedAudios')
            .where('title', isEqualTo: record.title)
            .get();

        for (var doc in audioSnapshot.docs) {
          await _firestore
              .collection('users')
              .doc(uid)
              .collection('deletedAudios')
              .doc(doc.id)
              .delete();
        }
      }
    } catch (e) {
      print('Помилка під час видалення аудіо: $e');
    }
  }

  Future<void> restoreSeveralAudiosFromDeletedCollection(
    List<DeletedRecordsModel> records,
  ) async {
    try {
      for (DeletedRecordsModel record in records) {
        QuerySnapshot audioSnapshot = await _firestore
            .collection('users')
            .doc(uid)
            .collection('deletedAudios')
            .where('title', isEqualTo: record.title)
            .get();

        for (var doc in audioSnapshot.docs) {
          final currentDuration = await _getTotalUserDuration();
          final newTotalDuration = currentDuration +
              const DurationConverter().fromJson(doc['duration']);
          await _firestore
              .collection('users')
              .doc(uid)
              .collection('audios')
              .add({
            'id': doc['id'],
            'title': doc['title'],
            'url': doc['url'],
            'duration': doc['duration'],
            'creationTime': doc['creationTime'],
          });
          await _firestore.collection('users').doc(uid).update({
            'audiosCount': FieldValue.increment(1),
            'duration': newTotalDuration.toString(),
          });
        }
        for (var doc in audioSnapshot.docs) {
          await _firestore
              .collection('users')
              .doc(uid)
              .collection('deletedAudios')
              .doc(doc.id)
              .delete();
        }
      }
    } catch (e) {
      BotToast.showText(text: "Error updating user data: $e");
      print('Помилка під час видалення аудіо: $e');
    }
  }

  Future<void> deleteCollection(String id) async {
    try {
      QuerySnapshot audioSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('collections')
          .where('id', isEqualTo: id)
          .get();

      for (var doc in audioSnapshot.docs) {
        await doc.reference.delete();
      }
    } catch (e) {
      BotToast.showText(text: "Error updating user data: $e");
      print('Ошибка при удалении: $e');
    }
  }

  Future<void> deleteUserDocument() async {
    try {
      await _firestore.collection('users').doc(uid).delete();
    } catch (e) {
      BotToast.showText(text: "Error updating user data: $e");
      print("Помилка при видаленні документа користувача: $e");
    }
  }

  Future<void> deleteAudioFromCollection(
    String collectionTitle,
    String audioTitle,
  ) async {
    try {
      QuerySnapshot collectionSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('collections')
          .where('title', isEqualTo: collectionTitle)
          .get();

      if (collectionSnapshot.docs.isNotEmpty) {
        for (var collectionDoc in collectionSnapshot.docs) {
          String durationString = collectionDoc['duration'] ?? '0:00:00.000000';
          Duration collectionDuration =
              const DurationConverter().fromJson(durationString);

          List<dynamic> audiosList = collectionDoc['audiosList'];

          var audioToDelete = audiosList.firstWhere(
            (audio) => audio['title'] == audioTitle,
            orElse: () => null,
          );

          if (audioToDelete != null) {
            Duration audioDuration =
                const DurationConverter().fromJson(audioToDelete['duration']);
            Duration newDuration = collectionDuration - audioDuration;

            audiosList.removeWhere((audio) => audio['title'] == audioTitle);

            await _firestore
                .collection('users')
                .doc(uid)
                .collection('collections')
                .doc(collectionDoc.id)
                .update({
              'audiosList': audiosList,
              'audioCount': FieldValue.increment(-1),
              'duration': newDuration.toString(),
            });
          } else {}
        }
      } else {
        BotToast.showText(text: "Колекція не знайдена!");
      }
    } catch (e) {
      BotToast.showText(text: "Помилка при видаленні аудіозапису: $e");
    }
  }

  Future<List<AudioRecordsModel>> getUserAudios() async {
    try {
      QuerySnapshot querySnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('audios')
          .get();

      return querySnapshot.docs
          .map(
            (doc) =>
                AudioRecordsModel.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList();
    } catch (e) {
      return [];
    }
  }

  Stream<UserModel?> getUserStream(String userId) {
    return _firestore.collection('users').doc(userId).snapshots().map(
      (snapshot) {
        if (snapshot.exists) {
          return UserModel.fromJson(snapshot.data()!);
        }
        return null;
      },
    );
  }

  Future<void> updateUserData(UserModel user) async {
    try {
      await _firestore.collection('users').doc(uid).update(user.toJson());
    } catch (e) {
      BotToast.showText(text: "Error updating user data: $e");
    }
  }

  Future<void> updateUserSubscription(Subscription subscription) async {
    try {
      await _firestore
          .collection('users')
          .doc(uid)
          .update({'subscription': subscription.toString().split('.').last});
    } catch (e) {
      BotToast.showText(text: "Error updating user data: $e");
    }
  }

  Future<bool> isAudioTitleExists(String title) async {
    try {
      QuerySnapshot audioSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('audios')
          .where('title', isEqualTo: title)
          .get();

      return audioSnapshot.docs.isNotEmpty;
    } catch (e) {
      BotToast.showText(text: 'Error checking audio title existence: $e');

      return false;
    }
  }

  Stream<List<AudioRecordsModel>> getUserAudiosStream2(
    List<AudioRecordsModel> audioList,
  ) {
    if (audioList.isEmpty) {
      return _firestore
          .collection('users')
          .doc(uid)
          .collection('audios')
          .orderBy('creationTime', descending: true)
          .limit(6)
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map((doc) => AudioRecordsModel.fromJson(doc.data()))
                .toList(),
          );
    }

    var lastAudio = audioList.last;

    return _firestore
        .collection('users')
        .doc(uid)
        .collection('audios')
        .orderBy('creationTime', descending: true)
        .startAfter([lastAudio.creationTime])
        .limit(6)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => AudioRecordsModel.fromJson(doc.data()))
              .toList(),
        );
  }

  Stream<List<AudioRecordsModel>> searchAudiosStream({
    required List<AudioRecordsModel> audioList,
    required String searchedText,
  }) {
    if (searchedText.isEmpty) {
      return Stream.value([]);
    }

    if (audioList.isEmpty) {
      return _firestore
          .collection('users')
          .doc(uid)
          .collection('audios')
          .where('title', isGreaterThanOrEqualTo: searchedText)
          .where(
            'title',
            isLessThan: '$searchedText\uf8ff',
          )
          .orderBy('title')
          .limit(10)
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map((doc) => AudioRecordsModel.fromJson(doc.data()))
                .toList(),
          );
    }

    var lastAudio = audioList.last;

    return _firestore
        .collection('users')
        .doc(uid)
        .collection('audios')
        .where('title', isGreaterThanOrEqualTo: searchedText)
        .where(
          'title',
          isLessThan: '$searchedText\uf8ff',
        )
        .orderBy('title')
        .startAfter([lastAudio.title])
        .limit(10)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => AudioRecordsModel.fromJson(doc.data()))
              .toList(),
        );
  }

  Stream<List<AudioRecordsModel>> searchAudiosChooseStream({
    required List<AudioRecordsModel> audioList,
    required String searchedText,
  }) {
    if (audioList.isEmpty) {
      return _firestore
          .collection('users')
          .doc(uid)
          .collection('audios')
          .orderBy('title')
          .limit(10)
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map((doc) => AudioRecordsModel.fromJson(doc.data()))
                .toList(),
          );
    }

    var lastAudio = audioList.last;

    return _firestore
        .collection('users')
        .doc(uid)
        .collection('audios')
        .where('title', isGreaterThanOrEqualTo: searchedText)
        .where(
          'title',
          isLessThan: '$searchedText\uf8ff',
        )
        .orderBy('title')
        .startAfter([lastAudio.title])
        .limit(10)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => AudioRecordsModel.fromJson(doc.data()))
              .toList(),
        );
  }

  Future<int> getAudioCount({required String searchedText}) async {
    if (searchedText.isEmpty) {
      return 0;
    }

    final query = await _firestore
        .collection('users')
        .doc(uid)
        .collection('audios')
        .where('title', isGreaterThanOrEqualTo: searchedText)
        .where('title', isLessThan: '$searchedText\uf8ff')
        .count()
        .get();

    return query.count!;
  }

  Stream<List<AudioRecordsModel>> getUserAudiosStream3() {
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('audios')
        .orderBy('creationTime', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => AudioRecordsModel.fromJson(doc.data()),
              )
              .toList(),
        );
  }

  Stream<List<DeletedRecordsModel>> getUserDeletedAudiosStream() {
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('deletedAudios')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => DeletedRecordsModel.fromJson(doc.data()),
              )
              .toList(),
        );
  }

  Stream<List<SimpleCollectionModel>> getUserCollectionStream() {
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('collections')
        .orderBy('creationTime', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => SimpleCollectionModel.fromJson(doc.data()),
              )
              .toList(),
        );
  }

  Stream<CollectionModel> getUserCollectionStreamById(
    String collectionId,
  ) {
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('collections')
        .where('id', isEqualTo: collectionId)
        .snapshots()
        .map((snapshot) {
      if (snapshot.docs.isEmpty) {
        return CollectionModel(
          id: '',
          title: '',
          collectionDescription: '',
          audiosList: [],
          imageUrl: '',
          creationTime: DateTime.now(),
        );
      }

      QueryDocumentSnapshot<Map<String, dynamic>> collectionDoc =
          snapshot.docs.first;

      return CollectionModel.fromJson(collectionDoc.data());
    });
  }
}
