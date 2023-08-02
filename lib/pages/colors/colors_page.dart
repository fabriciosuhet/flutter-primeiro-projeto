import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {

    // const cor = Colors.red;
    // final cor = Colors.red.withOpacity(0.5);
    // const cor = Color.fromRGBO(0, 0, 255, 1);
    final cor = const Color(0xFF45D1FD).withOpacity(0.5);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: cor,
        ),
      ),
    );
  }
}
