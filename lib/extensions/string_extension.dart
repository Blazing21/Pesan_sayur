part of 'extensions.dart';

extension StringExtension on String {
  bool isDigit(int index) => //fungsi untuk mengecek angka pada string.
      this.codeUnitAt(index) >= 48 && this.codeUnitAt(index) <= 57; // 48 sampe 57 merupakan code ascii 0 sampe 9
}