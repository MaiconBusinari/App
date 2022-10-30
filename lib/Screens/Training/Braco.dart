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
    //CHECKBOX_INDIVIDUAL CRIADA COM SETSTADE QUE MUDA VALOR DE CHECKBOX
    onChanged: (value) => setState(() {checkbox.value = value!;
    //GRUPO_CHECKBOX VERIFICA LISTA EXERCICIOS DE CHECKBOX PARA VER SE TODOS ESTAO MARCADOS/DESMARCADO
    treinocompleto.value =
        exercicios.every((exercicio) => exercicio.value);
    }),

  );

  //GRUPO_CHECKBOX -> POSSUI UMA CAIXA CHECKBOX
  Widget buildGroupCheckbox(CheckBoxState checkbox) =>  CheckboxListTile(
    value: checkbox.value,
    title: Text(checkbox.title,
      style: TextStyle(color:
      Colors.deepPurple[700],
          fontWeight: FontWeight.bold,
          fontSize: 28,
      ),),
      //GRUPO_CHECKBOX CRIADA COM SETSTATES QUE CHAMA FUNCAO ATIVARTODOSCHECKBOX
    onChanged: AtivarTodosCheckbox,
  );

  //PERCORRE A LISTA DE CHECKBOX E ALTERA SEU VALUE
  void AtivarTodosCheckbox(bool? value) {
    setState(() {
      if (value == null) return;
      treinocompleto.value = value;
      exercicios.forEach((exercicio) => exercicio.value = value);
    });
  }

  bool value = false;

//INSTANCIANDO CLASSE CHECKBOX
final treinocompleto = CheckBoxState(title: "Treino Completo");

//LISTA QUER SERÁ UTILIZADA PARA CRIAR CHECKBOXS INDIVIDUAIS
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
      //BARRA DE NAVEGACAO TREINO BRACO
      appBar: AppBar(
        title: Text('Treino de Braço'),
        centerTitle: true,
      ),
      //CORPO TREINO BRACO
      body:
      ListView(
        //TITULO E IMAGEM TELA TREINO BRACO
        padding: EdgeInsets.all(10),
        children: [  SizedBox(height: 8.0),
          Image.asset("assets/images/acad.png",
            height: 100.0,
            width: 100.0,
          ),
      //CHAMANDO A FUNCAO QUE CRIA UM GRUPO_CHECKBOX
      buildGroupCheckbox(treinocompleto),
      Divider(color: Colors.black),
      //CHAMANDO FUNCAO CRIA CHECKBOX_INDIVIDUAL E COLOCA DENTRO DO GRUPO_CHECKBOX
      ...exercicios.map(buildSingleCheckbox).toList(),

        ],
        )
      );
  }
}

//CRIANDO CLASSE ESTADO DE CHECKBOX
class CheckBoxState {
  final String title;
  bool value;

  CheckBoxState({
    required this.title,
    this.value = false,
  });
}
