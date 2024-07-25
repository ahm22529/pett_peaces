import 'dart:io';

class AddAmilesData {
  final String name, type, gender, age, dec, typedec;
  final File image;
  final List<File> otherImagee;

  AddAmilesData(
      {required this.name,
      required this.type,
      required this.gender,
      required this.age,
      required this.dec,
      required this.typedec,
      required this.image,
      required this.otherImagee});
}
