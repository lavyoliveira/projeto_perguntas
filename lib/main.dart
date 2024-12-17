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

  void responder() {
    if (temPerguntaSelecionada) {
      setState(() => perguntaSelecionada++);
    }
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? (perguntas[perguntaSelecionada]['respostas'] as List<String>)
        : [];
    List<Widget> widgets =
        respostas.map((t) => Resposta(t, responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 7, 23, 37),
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(perguntas[perguntaSelecionada]['texto'].toString()),
                  ...widgets
                ],
              )
            : Center(
                child: Text('Parabéns!', style: TextStyle(fontSize: 20),),
              ),
      ),
    );
  }
}
