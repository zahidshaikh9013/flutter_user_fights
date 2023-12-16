import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Setup {
  static int paginate10 = 10;
  static int paginate20 = 20;
  static int paginate25 = 25;
  static int paginate30 = 30;

  static String get bearerToken => dotenv.get("BEARER_TOKEN");
}
