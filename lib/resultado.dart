import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao <= 2) {
      return 'Ruim demais 🤣';
    } else if (pontuacao <= 4) {
      return 'Poderia ser melhor ein 🥲';
    } else if (pontuacao <= 8) {
      return 'Impressionante 🤌';
    } else {
      return 'Que isso menor!✨';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              fraseResultado,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Center(
              child: Text(
            'Você acertou: ${pontuacao}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          TextButton(
            onPressed: quandoReiniciarQuestionario,
            child: Text('Reiniciar', style: TextStyle(color: Colors.white)),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 7, 23, 37),
            ),
          )
        ],
      ),
    );
  }
}
