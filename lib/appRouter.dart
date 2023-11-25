import 'package:eco_city/presentation/screens/authorization/authorizationScreen.dart';
import 'package:eco_city/presentation/screens/authorization/restorePasswordScreen.dart';
import 'package:eco_city/presentation/screens/general/generalScreen.dart';
import 'package:eco_city/presentation/screens/notFound/notFoundScreen.dart';
import 'package:eco_city/presentation/screens/registration/personalDataScreen.dart';
import 'package:eco_city/presentation/screens/registration/registrationScreen.dart';
import 'package:eco_city/presentation/screens/registration/verifyPhoneScreen.dart';
import 'package:eco_city/presentation/screens/startScreen/startScreen.dart';
import 'package:get/get.dart';

class AppRouter {
  static const initialRoute = '/startScreen';

  static final routes = [
    GetPage(name: '/', page: () => const GeneralScreen()),
    GetPage(name: '/startScreen', page: () => const StartScreen()),
    GetPage(name: '/notFound', page: () => const NotFoundScreen()),
    GetPage(name: '/authorization', page: () => const AuthorizationScreen()),
    GetPage(
        name: '/restorePassword', page: () => const RestorePasswordScreen()),
    GetPage(name: '/registration', page: () => const RegistrationScreen()),
    GetPage(name: '/verifyPhone', page: () => const VerifyPhoneScreen()),
    GetPage(name: '/personalData', page: () => const PersonalDataScreen()),
  ];

  static final unknownRoute =
      GetPage(name: '/notFound', page: () => const NotFoundScreen());
}
