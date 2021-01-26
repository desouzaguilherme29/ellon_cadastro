import 'package:ellon_cadastro/screens/inicio/inicio.dart';
import 'package:ellon_cadastro/screens/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ellon Cadastros',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(118, 48, 220, 1.0),
          accentColor: Color.fromRGBO(228, 225, 253, 1.0)),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt', ''),
      ],
      home: SplashScreenView(
        home: InicialPage(),
        duration: 5000,
        imageSize: 200,
        imageSrc: "assets/logoellon.png",
        text: "Tecnologia em Gestão",
        textType: TextType.TyperAnimatedText,
        textStyle: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontFamily: "WorkSansSemiBold"
        ),
        backgroundColor: Color.fromRGBO(2, 30, 105, 1.0),
      )
    );
  }
}
