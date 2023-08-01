import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: const Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ImageAvatar(
                urlImage:
                    'https://imagens.ebc.com.br/cAQtQ-tGb2K8dLS2-V9KAZFhRhE=/1600x800/https://agenciabrasil.ebc.com.br/sites/default/files/thumbnails/image/logo_corinthians_001.jpg?itok=nY3uOLL6'),
          ),
          ImageAvatar(
              urlImage:
                  'https://lncimg.lance.com.br/uploads/2023/05/Roger-Guedes-aspect-ratio-512-320.jpeg')
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.red,
                Colors.blue,
                Colors.purple,
                Colors.green,
              ],
              begin: Alignment.topCenter,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'AO VIVO',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
