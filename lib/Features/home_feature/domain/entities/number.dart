
import 'package:kinder_connect/Features/home_feature/domain/entities/super_class.dart';

class Number extends SuperClass {
  Number(
      {required this.symbol,
      required this.modelPath,
      required super.name,
      required super.imagePath,
      required super.image2Path,
      required super.soundPath});
  String symbol;
  String modelPath;
}
