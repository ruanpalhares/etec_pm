import 'package:flutter/material.dart';

bool goodtogo = true;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iluminação Residencial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                if (!goodtogo) {
                  return;
                }
                if (goodtogo) {
                  var message = '';
                  bool conexao = false;
                  if (conexao == true) {
                    message = 'Conexão estabelecida!';
                  } else {
                    message = 'Conexão não encontrada!';
                  }
                  goodtogo = false;

                  var snackbar = SnackBar(content: Text(message));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  
                  Future.delayed(const Duration(milliseconds: 5000), () {
                    goodtogo = true;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 300), shape: const CircleBorder()),
              child: const Center(
                child: Text('On/Off'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
