import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('마이페이지'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 44, 96, 68),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search button is clicked");
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/vertical_symnbol.jpg'),
                ),
                accountName: Text('hyundo'),
                accountEmail: Text('hyundo13@naver.com'),
                onDetailsPressed: () {
                  print('arrow is clicked');
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 35,
          selectedItemColor: const Color.fromARGB(255, 44, 96, 68),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontSize: 10),
          currentIndex: _currentIndex,
          onTap: (int index) {
            // Handle bottom navigation actions
            if (index == 0) {
              // '목록' 페이지로
            } else if (index == 1) {
              // '홈' 페이지로
            } else if (index == 2) {
              // '마이페이지' 페이지로
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyPageScreen()),
              );
            }
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: '목록'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '마이페이지',
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoEditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 정보 수정'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Add your logic for the '내 정보 수정' button here
              },
              child: Text('내 정보 수정'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add your logic for the '로그아웃' button here
              },
              child: Text('로그아웃'),
            ),
            SizedBox(
                height:
                    20), // Add some spacing between the buttons and the ListView

            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  title: Text('전화 연결'),
                  onTap: () {
                    // Add your logic for the '전화 연결' list item here
                  },
                ),
                ListTile(
                  title: Text('E-mail'),
                  onTap: () {
                    // Add your logic for the 'E-mail' list item here
                  },
                ),
                ListTile(
                  title: Text('카카오톡'),
                  onTap: () {
                    // Add your logic for the '카카오톡' list item here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
