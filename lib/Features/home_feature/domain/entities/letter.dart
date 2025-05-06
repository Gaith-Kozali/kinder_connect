
import 'package:kinder_connect/Features/home_feature/domain/entities/super_class.dart';

class Letter extends SuperClass {
  Letter({
    required this.smallLetter,
    required this.capitalLetter,
    required this.modelCapitalPath,
    required this.modelSmallPath,
    required super.name,
    required super.imagePath,
    required super.image2Path,
    required super.soundPath,
  });

  String capitalLetter;
  String smallLetter;
  String modelCapitalPath;
  String modelSmallPath;
}
