import 'package:eco_city/presentation/screens/authorization/authorizationScreen.dart';
import 'package:eco_city/presentation/screens/general/generalScreen.dart';
import 'package:eco_city/presentation/screens/notFound/notFoundScreen.dart';
import 'package:eco_city/presentation/screens/registration/registrationScreen.dart';
import 'package:eco_city/presentation/screens/startScreen/startScreen.dart';
import 'package:get/get.dart';

class AppRouter {
  static const initialRoute = '/startScreen';

  static final routes = [
    GetPage(name: '/', page: () => GeneralScreen()),
    GetPage(name: '/startScreen', page: () => StartScreen()),
    GetPage(name: '/notFound', page: () => NotFoundScreen()),
    GetPage(name: '/authorization', page: () => AuthorizationScreen()),
    GetPage(name: '/registration', page: () => RegistrationScreen()),
  ];

  static final unknownRoute =
      GetPage(name: '/notFound', page: () => NotFoundScreen());
}
