import 'package:kinder_connect/Features/home_feature/domain/entities/super_class.dart';

class Animal extends SuperClass {
  Animal({
    required super.name,
    required super.imagePath,
    required super.image2Path,
    required super.soundPath,
    required this.modelPath,
  });
  String modelPath;
}
