import 'package:app_maromba/Avaliacoes/avaliacoes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class avaliacaoAdd extends StatefulWidget {

  //TIRAR DUVIDA------------------------------------------
  final Function(Avaliacoes) addAvaliacao;

  avaliacaoAdd(this.addAvaliacao);

  @override
  State<avaliacaoAdd> createState() => _avaliacaoAddState();
  //TIRAR DUVIDA------------------------------------------
  
}

var pesoController = TextEditingController();

class _avaliacaoAddState extends State<avaliacaoAdd> {
  String dataString = "";
  String dataEscolhida = "";
  String escolhaData = "Escolha uma data:";
  @override
  Widget build(BuildContext context) {
    //CONTAINER FORMULARIO DE PESO
    Widget buildTextField(String peso, TextEditingController pesoController) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: peso,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 64, 114, 251),
              ),
            ),
          ),
          controller: pesoController,
        ),
      );
    }

    return Container(
      padding: EdgeInsets.all(8),
      height: 300,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            //TITULO TELA ADICIOAR AVALIACAO
            Text(
              'Adicionar Avaliação',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.purpleAccent),
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (Text(escolhaData)),
                  //CONTAINER COM BOTAO DE CALENDARIO
                  IconButton(
                      icon: Icon(Icons.calendar_month_outlined),
                      onPressed: () async {
                        final data = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2018),
                          lastDate: DateTime(3000),
                          //Caso funcione em portugues
                          //locale:  Locale('pt', 'BR'),
                          locale: Locale('en', 'US'),
                        );

                        if (data == null) return;

                        dataString = data.toString();
                        var dataSplit = dataString.split(" ");
                        dataSplit = dataSplit[0].split("-");
                        dataString = dataSplit[2] +
                            "/" +
                            dataSplit[1] +
                            "/" +
                            dataSplit[0];

                        setState(() {
                          dataEscolhida = "A data escolhida foi: ";
                          escolhaData = "";
                        });
                      }),
                  //DATA SALVA EM UMA VARIAVEL
                  Text(dataEscolhida + dataString)
                ],
              ),
            ),
            //CONTAINER QUE CRIA FORMULARIO DE PESO
            buildTextField('Peso', pesoController),

            //BOTAO ADICIONAR AVALIACAO
            ElevatedButton(
                child: Text('Adicionar Avaliação'),
                onPressed: () {
                  final avaliacao = Avaliacoes(dataString, pesoController.text);

                  //PASSA CHAMA FUNCAO DE ADICIONAR AVALIACAO E PASSA UMA AVALISAO COMO PARAMETRO
                  widget.addAvaliacao(avaliacao);
                  Navigator.of(context).pop();
                },)
          ],
        ),
      ),
    );
  }
}
