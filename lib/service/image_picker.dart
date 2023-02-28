import 'dart:io';
import 'package:image_picker/image_picker.dart';

Future<File?> selectImageFromCamera() async {
  final image = await ImagePicker().pickImage(source: ImageSource.camera);
  if (image == null) return null;

  return File(image.path);
}
