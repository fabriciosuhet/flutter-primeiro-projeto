// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      // body: ListView.builder(
      //   itemCount: 100,
      //   itemBuilder: (context, index) {
      //     print('Carregando o indice $index');
      //     return ListTile(
      //       title: Text('Indice $index'),
      //       subtitle: const Text('Flutter é top'),
      //       leading: const CircleAvatar(),
      //     );
      body: ListView.separated(
        itemCount: 100,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.red,
            thickness: 10, 
          );
        },
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: const Text('Flutter é top'),
            leading: const CircleAvatar(
              maxRadius: 60,
              backgroundImage: NetworkImage('https://lncimg.lance.com.br/cdn-cgi/image/width=1920,quality=75,format=webp/uploads/2023/07/agenciacorinthians-foto-205998-scaled-aspect-ratio-512-320.jpg'),
            ),
            trailing: const CircleAvatar(),
          );
        },
      ),
    );
  }
}
