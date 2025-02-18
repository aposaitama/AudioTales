import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/models/deleted_records_model.dart';
import 'package:uuid/uuid.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Uuid uuid = const Uuid();
  final uid = 'h0xeD3p0jwqRcLqOGp0U';

  Future<void> saveUserAudio(
    String title,
    String downloadUrl,
    String duration,
  ) async {
    try {
      await _firestore
          .collection('users')
          .doc('h0xeD3p0jwqRcLqOGp0U')
          .collection('audios')
          .add({
        'id': uuid.v1(),
        'title': title,
        'url': downloadUrl,
        'duration': duration,
        'creationTime': Timestamp.now(),
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

        for (var audio in audiosList) {
          audiosListInCollection
              .removeWhere((audioData) => audioData['id'] == audio.id);
        }

        await _firestore
            .collection('users')
            .doc(uid)
            .collection('collections')
            .doc(collectionDoc.id)
            .update({'audiosList': audiosListInCollection});

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
      List<Map<String, dynamic>> serializedAudiosList =
          audiosList.map((audio) => audio.toJson()).toList();
      await _firestore
          .collection('users')
          .doc('h0xeD3p0jwqRcLqOGp0U')
          .collection('collections')
          .add({
        'id': uuid.v1(),
        'title': title,
        'collectionDescription': collectionDescription,
        'audiosList': serializedAudiosList,
        'imageUrl': imageUrl,
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
    List<CollectionModel> collections,
  ) async {
    try {
      for (CollectionModel collection in collections) {
        QuerySnapshot collectionSnapshot = await _firestore
            .collection('users')
            .doc(uid)
            .collection('collections')
            .where('id', isEqualTo: collection.id)
            .get();

        if (collectionSnapshot.docs.isNotEmpty) {
          var collectionDoc = collectionSnapshot.docs.first;
          List<dynamic> audiosList = collectionDoc['audiosList'] ?? [];

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

                await _firestore
                    .collection('users')
                    .doc(uid)
                    .collection('collections')
                    .doc(collectionDoc.id)
                    .update({'audiosList': audiosList});
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

      if (audioSnapshot.docs.isNotEmpty) {
        for (var doc in audioSnapshot.docs) {
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
      print('Ошибка при удалении: $e');
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
          List<dynamic> audiosList = collectionDoc['audiosList'];
          audiosList.removeWhere((audio) => audio['title'] == audioTitle);

          await _firestore
              .collection('users')
              .doc(uid)
              .collection('collections')
              .doc(collectionDoc.id)
              .update({
            'audiosList': audiosList,
          });
        }
      } else {}
    } catch (e) {}
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

  Stream<List<AudioRecordsModel>> getUserAudiosStream() {
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

  Stream<List<CollectionModel>> getUserCollectionStream() {
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('collections')
        .orderBy('creationTime', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => CollectionModel.fromJson(doc.data()),
              )
              .toList(),
        );
  }

  Stream<CollectionModel> getUserCollectionStreamByTitle(
    String collectionTitle,
  ) {
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('collections')
        .where('id', isEqualTo: collectionTitle)
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
