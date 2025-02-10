import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/collection_model.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final uid = 'h0xeD3p0jwqRcLqOGp0U';

  Future<void> saveUserAudio(
      String title, String downloadUrl, String duration) async {
    try {
      await _firestore
          .collection('users')
          .doc('h0xeD3p0jwqRcLqOGp0U')
          .collection('audios')
          .add({
        'title': title,
        'url': downloadUrl,
        'duration': duration,
      });
      print('Аудіо успішно збережено в Firestore!');
    } catch (e) {
      print('Помилка при збереженні аудіо: $e');
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
        'title': title,
        'collectionDescription': collectionDescription,
        'audiosList': serializedAudiosList,
        'imageUrl': imageUrl
      });
      print('Аудіо успішно збережено в Firestore!');
    } catch (e) {
      print('Помилка при збереженні аудіо: $e');
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
            'title': doc['title'],
            'url': doc['url'],
            'duration': doc['duration'],
            'deletedAt': Timestamp.now(),
          });

          await _firestore
              .collection('users')
              .doc(uid)
              .collection('audios')
              .doc(doc.id)
              .delete();

          print('Аудіо успішно видалено і переміщено в deletedAudios!');
        }
      } else {
        print('Аудіо з назвою $audioTitle не знайдено');
      }
    } catch (e) {
      print('Помилка при видаленні аудіо: $e');
    }
  }

  Future<void> deleteAudioFromCollection(
      String collectionTitle, String audioTitle) async {
    try {
      // Отримуємо колекції користувача з Firestore
      QuerySnapshot collectionSnapshot = await _firestore
          .collection('users')
          .doc(uid)
          .collection('collections')
          .where('title', isEqualTo: collectionTitle)
          .get();

      if (collectionSnapshot.docs.isNotEmpty) {
        for (var collectionDoc in collectionSnapshot.docs) {
          // Оновлюємо список аудіозаписів, видаляючи потрібний аудіозапис
          List<dynamic> audiosList = collectionDoc['audiosList'];
          audiosList.removeWhere((audio) => audio['title'] == audioTitle);

          // Оновлюємо документ колекції в Firestore
          await _firestore
              .collection('users')
              .doc(uid)
              .collection('collections')
              .doc(collectionDoc.id)
              .update({
            'audiosList': audiosList,
          });

          print(
              'Аудіозапис $audioTitle успішно видалений з колекції $collectionTitle!');
        }
      } else {
        print('Колекція з назвою $collectionTitle не знайдена');
      }
    } catch (e) {
      print('Помилка при видаленні аудіозапису з колекції: $e');
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
          .map((doc) =>
              AudioRecordsModel.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Помилка при отриманні аудіозаписів: $e');
      return [];
    }
  }

  Stream<List<AudioRecordsModel>> getUserAudiosStream() {
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('audios')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => AudioRecordsModel.fromJson(doc.data()),
              )
              .toList(),
        );
  }

  Stream<List<CollectionModel>> getUserCollectionStream() {
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('collections')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => CollectionModel.fromJson(doc.data()),
              )
              .toList(),
        );
  }
}
