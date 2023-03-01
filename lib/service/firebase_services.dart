import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:geolocator/geolocator.dart';

import '../models/report_model.dart';

final FirebaseStorage storage = FirebaseStorage.instance;
final FirebaseFirestore firestore = FirebaseFirestore.instance;

Future<List<String>?> uploadImages(List<File> images) async {
  List<String> urls = [];
  try {
    for (var image in images) {
      String fileName = image.path.split('/').last;
      Reference ref = storage.ref().child('images/$fileName');
      UploadTask uploadTask = ref.putFile(image);
      TaskSnapshot taskSnapshot = await uploadTask;
      String url = await taskSnapshot.ref.getDownloadURL();
      urls.add(url);
    }
    return urls;
  } catch (e) {
    return null;
  }
}

Future<bool> createReport(
    List<String> urlImages, Position location, String comment) async {
  try {
    await firestore.collection('reports').add({
      'images': urlImages,
      'location': GeoPoint(location.latitude, location.longitude),
      'comment': comment,
    });
    return true;
  } catch (e) {
    return false;
  }
}

Future<List<ReportModel>?> getReports() async {
  try {
    final QuerySnapshot<Map<String, dynamic>> reportsSnapshot =
        await firestore.collection('reports').get();
    final List<ReportModel> reports = [];
    for (var report in reportsSnapshot.docs) {
      final Map<String, dynamic> reportModelMap = report.data();
      reports.add(ReportModel.fromJson(reportModelMap));
    }
    return reports;
  } catch (e) {
    return null;
  }
}
