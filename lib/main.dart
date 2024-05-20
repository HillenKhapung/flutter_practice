import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'routes.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/" : (context)=> loginPage(),
        MyRoutes.homeRoute: (context)=> homepage(),
        MyRoutes.loginRoute : (context)=> loginPage(),
      },
    );
  }
}

