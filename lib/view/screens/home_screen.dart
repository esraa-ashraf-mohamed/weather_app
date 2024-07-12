import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff5f42cd),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Cairo",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w400
              ),
            ),
            Text("44",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 96,
                  fontWeight: FontWeight.w200
              ),
            ),
            Text("Clear",
              style: TextStyle(
                color: Color(0xffa09e9e),
                fontSize: 20,
              ),
            ),
            Text("H:37  L:23",
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 20,
              ),
            ),
            Divider(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value){
            index = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon:Icon(Icons.map_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.near_me_rounded), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          ],
        ),
      ),
    );
  }
}
