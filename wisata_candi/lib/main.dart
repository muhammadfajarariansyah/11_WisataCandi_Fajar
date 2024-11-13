import 'package:flutter/material.dart';
import 'package:wisata_candi/screens/search_screen.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wisata Candi",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50]
        ),
        useMaterial3: true,
      ),
      //home: DetailScreen(candi: candiList[0]), 
      //home: const ProfileScreen(),
      //home: SignInScreen(),
      //home: SignUpScreen(),
      home: SearchScreen(),
    );
  }
}