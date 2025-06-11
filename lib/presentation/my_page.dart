import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '내 정보 관리',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              '로그아웃',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '탈퇴하기',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '정보',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              '개인정보처리방침',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '문의',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              'so02sw01@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
