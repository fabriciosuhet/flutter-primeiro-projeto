import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    print('Largura ${mediaQuery.size.width}');
    print('Altura ${mediaQuery.size.height}');
    print('Orientação ${mediaQuery.orientation}');
    print('Padding top ${mediaQuery.padding.top}');
    print('Tamanho app bar default $kToolbarHeight');

    final statusBar = mediaQuery.padding.top;
    final heightbody = mediaQuery.size.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            width: mediaQuery.size.width *.5,
            height: heightbody * .5,
          ),
          Container(
            color: Colors.blue,
            width: mediaQuery.size.width,
            height: heightbody * .5,
          ),
        ],
      )),
    );
  }
}
