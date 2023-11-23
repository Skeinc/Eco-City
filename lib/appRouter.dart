import 'package:eco_city/presentation/screens/general/generalScreen.dart';
import 'package:eco_city/presentation/screens/notFound/notFoundScreen.dart';
import 'package:eco_city/presentation/screens/startScreen/startScreen.dart';
import 'package:get/get.dart';

class AppRouter {
  static const initialRoute = '/startScreen';

  static final routes = [
    GetPage(name: '/', page: () => GeneralScreen()),
    GetPage(name: '/startScreen', page: () => StartScreen()),
  ];

  static final unknownRoute =
      GetPage(name: '/notFound', page: () => NotFoundScreen());
}
