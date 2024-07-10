import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerService {
  Future<List<File>?> pickImages() async {
    List<XFile>? pickedFiles = await ImagePicker().pickMultiImage();

    if (pickedFiles != null) {
      List<File> images = pickedFiles.map((file) => File(file.path)).toList();
      return images;
    }
    return null;
  }

  Future<void> openCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      // يمكنك استخدام pickedFile.path لاستخدام الصورة الملتقطة
    }
  }
}
