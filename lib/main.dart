import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {

  void responder(){
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 7, 23, 37),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder
            ),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder
            ),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder
            )
          ],
        ),
      ),
    );
  }
}