import 'package:app_maromba/Avaliacoes/avaliacoes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class avaliacaoAdd extends StatefulWidget {
  final Function(Avaliacoes) addAvaliacao;

  avaliacaoAdd(this.addAvaliacao);

  @override
  State<avaliacaoAdd> createState() => _avaliacaoAddState();
}

class _avaliacaoAddState extends State<avaliacaoAdd> {
  String dataString = "";
  String dataEscolhida = "";
  String escolhaData = "Escolha uma data:";
  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purpleAccent,
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }

    var dataController = TextEditingController();
    var pesoController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(8),
      height: 300,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
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
                      Text(dataEscolhida + dataString)
                ],
              ),
            ),
            //buildTextField('Data', dataController),
            buildTextField('Peso', pesoController),

            ElevatedButton(
                onPressed: () {
                  final avaliacao = Avaliacoes(dataString, pesoController.text);

                  widget.addAvaliacao(avaliacao);
                  Navigator.of(context).pop();
                },
                child: Text('Adicionar Avaliação'))
          ],
        ),
      ),
    );
  }
}
