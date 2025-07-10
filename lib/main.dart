import 'package:desafio_mobile/constants/routes.dart';
import 'package:desafio_mobile/constants/size_config.dart';
import 'package:desafio_mobile/constants/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      SizeConfig().init(constraints);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Seguradora',
        theme: AppTheme.appTheme,
        initialRoute: '/login',
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: navigatorKey,
      );
    });
  }
}
