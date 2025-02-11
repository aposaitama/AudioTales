import 'package:firebase_storage/firebase_storage.dart';

import 'dart:io';

import 'package:path/path.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> uploadFile(String filePath, String title) async {
    try {
      final file = File(filePath);

      if (await file.exists()) {
        Reference ref = _storage.ref().child('recordings/$title');

        UploadTask uploadTask = ref.putFile(file);

        TaskSnapshot snapshot = await uploadTask;

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
        String fileName = basename(filePath);
        Reference ref = _storage.ref().child('images/$fileName');

        UploadTask uploadTask = ref.putFile(file);

        TaskSnapshot snapshot = await uploadTask;

        return await snapshot.ref.getDownloadURL();
      } else {
        throw Exception("File does not exist!");
      }
    } catch (e) {
      throw Exception("Error uploading file: $e");
    }
  }
}
