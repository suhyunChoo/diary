import 'package:flutter/material.dart';
import 'package:flutter_diary_app/presentation/diary_page.dart';
import 'package:flutter_diary_app/presentation/my_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // 각 탭에 해당하는 위젯들
  final List<Widget> _pages = [
    DiaryPage(),
    MyPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // 선택된 페이지 보여주기
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,     // 현재 선택된 인덱스
        onTap: _onItemTapped,             // 탭했을 때 호출
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '프로필',
          ),
        ],
      ),
    );
  }
}