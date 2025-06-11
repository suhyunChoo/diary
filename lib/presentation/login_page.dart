import 'package:flutter/material.dart';
import 'package:flutter_diary_app/presentation/sign_up_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('login'),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '아이디',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '비밀번호',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => SignUpPage());
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Text('회원가입'),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('로그인'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
