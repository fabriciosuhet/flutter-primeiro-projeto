import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/container/containerpage.dart';
import 'package:flutter_primeiro_projeto/pages/home/homepage.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_columns_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnPage(),
      },
    );
  }
}
