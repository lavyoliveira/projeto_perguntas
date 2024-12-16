import 'package:flutter/material.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder(){
    setState(() => perguntaSelecionada++);
    print(perguntaSelecionada);
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
            Questao(perguntas[perguntaSelecionada]),
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
