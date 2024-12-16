import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() => perguntaSelecionada++);
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é sua fruta preferida?',
        'respostas': ['Maçã', 'Laranja', 'Manga', 'Acerola']
      },
      {
        'texto': 'Qual é seu animal preferido?',
        'respostas': ['Leão', 'Cachorro', 'Gato', 'Cavalo']
      },
      {
        'texto': 'Qual é sua cor preferida?',
        'respostas': ['Rosa', 'Azul', 'Preto', 'Vermelho']
      }
    ];

    List<String> respostas =
        perguntas[perguntaSelecionada]['respostas'] as List<String>? ?? [];
    List<Widget> widgets =
        respostas.map((t) => Resposta(t, responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 7, 23, 37),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['texto'].toString()),
            ...widgets
          ],
        ),
      ),
    );
  }
}
