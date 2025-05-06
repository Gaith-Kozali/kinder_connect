import 'package:kinder_connect/Features/home_feature/domain/entities/animal.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/letter.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/number.dart';

class SuperClass {
  SuperClass({
    required this.name,
    required this.imagePath,
    required this.image2Path,
    required this.soundPath,
  });
  String name;
  String imagePath;
  String image2Path;
  String soundPath;

  String get modelPath {
    if (this is Number) return (this as Number).modelPath;
    if (this is Letter) return (this as Letter).modelSmallPath;
    if (this is Animal) return (this as Animal).modelPath;
    throw Exception("Unknown SuperClass type");
  }
}
