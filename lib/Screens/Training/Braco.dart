import 'package:flutter/material.dart';

class Braco extends StatefulWidget {
  const Braco({Key? key}) : super(key: key);

  @override
  State<Braco> createState() => _BracoState();
}

class _BracoState extends State<Braco> {

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
  CheckBoxState(title: '3x15                     Triceps Pulley'),
  CheckBoxState(title: '4x15                     Triceps Testa'),
  CheckBoxState(title: '4x8                       Rosca Direta'),
  CheckBoxState(title: '2x20                     Rosca Concentrada'),
  CheckBoxState(title: '1x8                       Rosca Concentrada'),
  CheckBoxState(title: '4x15                     Face Pull')
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treino de Braço'),
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
