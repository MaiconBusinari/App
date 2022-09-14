import 'package:flutter/material.dart';

class Costas extends StatefulWidget {
  const Costas({Key? key}) : super(key: key);

  @override
  State<Costas> createState() => _CostasState();
}

class _CostasState extends State<Costas> {

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
  CheckBoxState(title: '3x10                     Puxada Frente'),
  CheckBoxState(title: '3x10                     Remada Serrote'),
  CheckBoxState(title: '2x15                     Pulldown'),
  CheckBoxState(title: '2x20                     Remada T'),
  CheckBoxState(title: '2x8                      Encolhimento'),
  CheckBoxState(title: '3x8                      Desenv. Maquina'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treino de Costas e Ombro'),
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
