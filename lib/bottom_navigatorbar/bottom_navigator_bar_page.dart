import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/bottom_navigatorbar/page1.dart';
import 'package:flutter_primeiro_projeto/bottom_navigatorbar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({super.key});

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {

  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigator Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
          
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Página 1',
            icon: Icon(
              Icons.add_a_photo_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Página 2',
            icon: Icon(
              Icons.add_comment,
            ),
          ),
        ], 
      ),
      body: IndexedStack(
        index: indice,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
