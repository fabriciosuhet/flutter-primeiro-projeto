// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final materialbanner = MaterialBanner(
                  content: const Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.purple,
                  forceActionsBelow: true,
                  actions: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: const Text('Cancelar'),
                    ),
                  ],
                );
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(materialbanner);
                Future.delayed(const Duration(seconds: 2), () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                });
              },
              child: const Text('Simple Material Banner'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: const Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.purple,
                  action: SnackBarAction(
                    label: 'Desafazer',
                    onPressed: () {
                      print('Clicado');
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
