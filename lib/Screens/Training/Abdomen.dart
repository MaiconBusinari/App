import 'package:flutter/material.dart';

class Abdomen extends StatefulWidget {
  const Abdomen({Key? key}) : super(key: key);

  @override
  State<Abdomen> createState() => _AbdomenState();
}

class _AbdomenState extends State<Abdomen> {

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
  CheckBoxState(title: '3x20                     Abdominal Reto'),
  CheckBoxState(title: '3x20                     Abdominal Polia'),
  CheckBoxState(title: '4x10                     Encolhimento Perna'),
  CheckBoxState(title: '4x15                     Elevação Perna'),
  CheckBoxState(title: '4x12                     Rotação Tronco'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treino de Abdômen'),
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
