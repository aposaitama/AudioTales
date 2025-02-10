import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'dart:io';

import 'package:path/path.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // Future<List<AudioRecordsModel>> getAudioRecords() async {
  //   try {
  //     // Отримуємо список всіх файлів з папки 'recordings'
  //     final ListResult result = await _storage.ref('recordings').listAll();

  //     // Перетворюємо список файлів на список моделей AudioRecordsModel
  //     List<AudioRecordsModel> audioRecords =
  //         await Future.wait(result.items.map((Reference ref) async {
  //       // Отримуємо URL для кожного файлу
  //       String audioUrl = await ref.getDownloadURL();

  //       // Можемо використовувати ім'я файлу як текст
  //       String text = ref.name;

  //       return AudioRecordsModel(
  //         title: text,
  //         url: audioUrl,
  //         duration:
  //       );
  //     }));

  //     return audioRecords;
  //   } catch (e) {
  //     // Якщо сталася помилка, виводимо її і повертаємо порожній список
  //     print('Error getting audio records: $e');
  //     return [];
  //   }
  // }

  Future<String> uploadFile(String filePath, String title) async {
    try {
      final file = File(filePath);

      if (await file.exists()) {
        // Створюємо посилання для збереження файлу
        String fileName = basename(filePath);
        Reference ref = _storage.ref().child('recordings/$title');

        // Завантажуємо файл
        UploadTask uploadTask = ref.putFile(file);

        // Чекаємо завершення завантаження
        TaskSnapshot snapshot = await uploadTask;

        // Отримуємо URL файлу
        return await snapshot.ref.getDownloadURL();
      } else {
        throw Exception("File does not exist!");
      }
    } catch (e) {
      throw Exception("Error uploading file: $e");
    }
  }

  Future<String> uploadImage(String filePath) async {
    try {
      final file = File(filePath);

      if (await file.exists()) {
        // Створюємо посилання для збереження файлу
        String fileName = basename(filePath);
        Reference ref = _storage.ref().child('images/$fileName');

        // Завантажуємо файл
        UploadTask uploadTask = ref.putFile(file);

        // Чекаємо завершення завантаження
        TaskSnapshot snapshot = await uploadTask;

        // Отримуємо URL файлу
        return await snapshot.ref.getDownloadURL();
      } else {
        throw Exception("File does not exist!");
      }
    } catch (e) {
      throw Exception("Error uploading file: $e");
    }
  }
}
