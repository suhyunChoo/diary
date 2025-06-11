import 'package:flutter/material.dart';

class DiaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diary'),
          actions: [
            IconButton(
              icon: Icon(Icons.add_circle_outline),
              onPressed: () {
                //새로운 데이터 추가
              },
            ),
          ],
          // 앱바 제목
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                // childAspectRatio: 1 / 1,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      print('container click');
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('위치'),
                          Text('날짜'),
                          Text('data'),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
