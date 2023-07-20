import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 10,
                  offset: Offset(-10, -10),
                ),
              ]),
        ),
      ),
    );
  }
}
