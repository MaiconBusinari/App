import 'package:flutter/material.dart';

class Aerobico extends StatefulWidget {
  const Aerobico({Key? key}) : super(key: key);

  @override
  State<Aerobico> createState() => _AerobicoState();
}

//FUNCIONA IGUAL A CLASSE BRACO
class _AerobicoState extends State<Aerobico> {

  Widget buildSingleCheckbox(CheckBoxState checkbox) =>  CheckboxListTile(
    value: checkbox.value,
    title: Text(checkbox.title,
      style: TextStyle(color:
      Colors.deepPurple,
          fontWeight: FontWeight.bold
      ),),
    onChanged: (value) => setState(() {checkbox.value = value!;
    treinocompleto.value =
        exercicios.every((exercicio) => exercicio.value);
    }),

  );

  Widget buildGroupCheckbox(CheckBoxState checkbox) =>  CheckboxListTile(
    value: checkbox.value,
    title: Text(checkbox.title,
      style: TextStyle(color:
      Colors.deepPurple[700],
          fontWeight: FontWeight.bold,
          fontSize: 28,
      ),),
    onChanged: AtivarTodosCheckbox,
  );

  void AtivarTodosCheckbox(bool? value) {
    setState(() {
      if (value == null) return;
      treinocompleto.value = value;
      exercicios.forEach((exercicio) => exercicio.value = value);
    });
  }

  bool value = false;

final treinocompleto = CheckBoxState(title: "Treino Completo");

final exercicios = [
  CheckBoxState(title: '20min                    Esteira'),
  CheckBoxState(title: '1min                      Abdominal Infra'),
  CheckBoxState(title: '1min                      Flexão'),
  CheckBoxState(title: '1min                      Agachamento'),
  CheckBoxState(title: '1min                      Twist com halter'),
  CheckBoxState(title: '1min                      Crucifixo Invertido sentado'),
  CheckBoxState(title: 'Até falhar              Prancha'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treino Aeróbico'),
        centerTitle: true,
      ),
      body:
      ListView(
        padding: EdgeInsets.all(10),
        children: [  SizedBox(height: 8.0),
          Image.asset("assets/images/acad.png",
            height: 100.0,
            width: 100.0,
          ),
      buildGroupCheckbox(treinocompleto),
      Divider(color: Colors.black),
      ...exercicios.map(buildSingleCheckbox).toList(),

        ],
        )
      );
  }
}
class CheckBoxState {
  final String title;
  bool value;

  CheckBoxState({
    required this.title,
    this.value = false,
  });
}
