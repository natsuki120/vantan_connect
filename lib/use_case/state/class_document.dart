import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filePickerProvider = ChangeNotifierProvider.autoDispose<ClassDocument>(
  (ref) => ClassDocument(),
);

class ClassDocument extends ChangeNotifier {
  ClassDocument() {
    pickSuccess = false;
    fileName = '選択したファイル名がここに表示されます';
    fileContents = 'ファイルの中身がここに表示されます';
    file = null;
  }

  /// このプロバイダーが廃棄されるよきに呼ばれる
  @override
  void dispose() {
    super.dispose();
  }

  bool pickSuccess = false; // 読み込みが成功したら true

  File? file;
  String? fileName;
  String? fileContents;

  Future<bool> get pickFileIsSuccess async {
    final filePickerResult = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pptx'], // ピックする拡張子を限定できる。
    );
    if (filePickerResult != null) {
      pickSuccess = true;
      file = File(filePickerResult.files.single.path!);
      fileName = filePickerResult.files.single.name;
    } else {
      pickSuccess = false;
      file = File('');
      fileName = '何も選択されませんでした';
      fileContents = 'ファイルの中身がここに表示されます';
    }
    notifyListeners();
    return pickSuccess;
  }

  /// ファイルを読み込む
  Future<void> readFileContents() async {
    if (file != null) {
      fileContents = await file!.readAsString();
      notifyListeners();
    }
  }
}
