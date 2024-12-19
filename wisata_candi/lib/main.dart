import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/screens/home_screen.dart';
import 'package:wisata_candi/screens/detail_screen.dart';
import 'package:wisata_candi/screens/favorite_screen.dart';
import 'package:wisata_candi/screens/home_screen.dart';
import 'package:wisata_candi/screens/profile_screen.dart';
import 'package:wisata_candi/screens/search_screen.dart';
import 'package:wisata_candi/screens/sign_in_screen.dart';
import 'package:wisata_candi/screens/sign_up_screen.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (Context) => Home(),
        '/home': (Context) => Home(),
        '/signin': (Context) => SignInScreen(),
        '/signup': (Context) => SignUpScreen(),
        '/search': (Context) => SearchScreen(),
        '/profile': (Context) => const ProfileScreen(),
        '/favorite': (Context) => const FavoriteScreen(),
      }
  ));
}


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  int _selectedIndex = 0;

  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      HomeScreen(),
      SearchScreen(),
      FavoriteScreen(),
      ProfileScreen(),
    ];
  }


  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    return Scaffold(
      body: _pages.isNotEmpty ? _pages[_selectedIndex] : const Center(child: CircularProgressIndicator()),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.deepPurple,
          ),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),

      //home: DetailScreen(candi: candiList[0]),
      //home: ProfileScreen(),
      //home: SignUpScreen(),
      //home: SignInScreen(),
      // home: SearchScreen(),
      home: HomeScreen(),
    );
  }
}