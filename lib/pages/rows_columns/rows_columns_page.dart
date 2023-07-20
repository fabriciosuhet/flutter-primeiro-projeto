import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Columns Page'),
      ),
      body: Container(
        width: 400,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Elemento 1'),
            const Text('Elemento 2'),
            const Text('Elemento 3'),
            Container(
              color: Colors.amber,
              height: 200,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
