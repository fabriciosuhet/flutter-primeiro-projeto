import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = '';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // TextField(
              //   onChanged: (String value) {
              //     setState(() {
              //       texto = value;
              //     });
              //   },
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Text('Texto digitado $texto'),

              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo X não preenchido';
                  }
                  return null;
                },
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo X não preenchido';
                  }
                  return null;
                },
              ),

              ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    var message = 'Formulário Inválido';

                    if (formValid) {
                      message = 'Formulário Válido';
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                  },
                  child: const Text('Salvar'))
            ],
          ),
        ),
      ),
    );
  }
}
