import 'package:flutter/material.dart';

class BotoesRotacoesTextoPage extends StatelessWidget {
  const BotoesRotacoesTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(10),
                    child: const Text('Fabrício Suhet'),
                  ),
                ),
                const Icon(Icons.ac_unit)
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                minimumSize: const Size(50, 150),
                padding: const EdgeInsets.all(50),
              ),
              child: const Text('Salvar'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.red,
                  shadowColor: Colors.pink,
                  minimumSize: const Size(150, 36)),
              child: const Text('Salvar'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.airplane_ticket),
              label: const Text('Modo Avião'),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  shadowColor: Colors.blue,
                  minimumSize: const Size(150, 36)),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Size(150, 150);
                    } else if (states.contains(MaterialState.hovered)) {
                      return const Size(200, 200);
                    }
                    return const Size(120, 50);
                  }),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.amber;
                    }
                    return Colors.red;
                  })),
              child: const Text('Salvar'),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),
            GestureDetector(
              child: const Text('Gesture Detector'),
              onTap: () => print('Gesture clicado!'),
              onVerticalDragStart: (_) => print('Gesture Movimentado!'),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(0, 5),
                        color: Colors.red),
                  ]),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: const Center(
                  child: Text(
                    'Botão Salvar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
