import 'package:file_picker/file_picker.dart';

class FilePickerHelper {
  static Future<Map<String, dynamic>?> pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        withData: true,
      );

      if (result != null) {
        PlatformFile file = result.files.first;
        return {
          'name': file.name,
          'bytes': file.bytes,
          'size': file.size,
          'path': file.path,
          'extension': file.extension,
        };
      }
      return null;
    } catch (e) {
      print('File picker error: $e');
      return null;
    }
  }

  static String formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}
