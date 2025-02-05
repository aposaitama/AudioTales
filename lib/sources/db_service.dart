import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/collection_model.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final uid = 'h0xeD3p0jwqRcLqOGp0U';

  Future<void> saveUserAudio(String title, String downloadUrl) async {
    try {
      await _firestore
          .collection('users')
          .doc('h0xeD3p0jwqRcLqOGp0U')
          .collection('audios')
          .add({
        'title': title,
        'url': downloadUrl,
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
