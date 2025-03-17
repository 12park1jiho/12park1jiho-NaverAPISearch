import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // 로그인 화면 파일 경로에 맞게 수정
import 'screens/search_screen.dart'; // 검색 화면 파일 경로에 맞게 수정

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        fontFamily: 'Raleway',
      ),
      initialRoute: '/', // 초기 라우트 설정
      routes: {
        '/': (context) => LoginScreen(), // 로그인 화면 라우트
        '/search': (context) => SearchScreen(), // 검색 화면 라우트
      },
    );
  }
}