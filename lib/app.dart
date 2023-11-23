import 'package:eco_city/appRouter.dart';
import 'package:eco_city/presentation/bloc/navigationBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eco City',
      home: BlocProvider(
        create: (context) => NavigationBloc(),
        child: AppNavigator(),
      ),
    );
  }
}

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NavigationBloc navigationBloc =
        BlocProvider.of<NavigationBloc>(context);

    return BlocBuilder<NavigationBloc, String>(
      builder: (context, route) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: route,
          getPages: AppRouter.routes,
          unknownRoute: AppRouter.unknownRoute,
        );
      },
    );
  }
}
