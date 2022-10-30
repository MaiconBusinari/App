import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dietlist extends StatefulWidget {
  @override
  State<Dietlist> createState() => _DietlistState();
}

class _DietlistState extends State<Dietlist> {
  void adicionarDieta() async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        _itens.add(ItemController.text);
      });
      ItemController.clear();
    }
  }

  final TextEditingController ItemController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  List<String> _itens = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE NAVEGACAO DIETA
      appBar: AppBar(
        title: Text('Minha Dieta'),
      ),
      body:
          //CORPO DIETA
          Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: Column(
            //IMAGEM TELA DIETA
            children: <Widget>[
              Image.asset(
                "assets/images/dieta.png",
                height: 120.0,
                width: 130.0,
              ),
              //CONTAINER PARA FORMULARIO -> DIETA
              Form(
                key: _formkey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        controller: ItemController,
                        style: TextStyle(color: Colors.purple, fontSize: 18),
                        decoration: InputDecoration(
                            hintText: "Refeição ou Alimento..."),
                        keyboardType: TextInputType.text,
                        //VERIFICANDO SE FORMULARIO ESTA VAZIO
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return "O campo precisa ser preenchido.";
                          }
                          return null;
                        },
                      ),
                    ),
                    //CONTAINER BOTAO ADICIONAR DIETA
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          child: Text('Adicionar',
                              style: TextStyle(color: Colors.deepPurple)),
                          onPressed: () {
                            //ADICIONANDO ITEM A DIETA
                            adicionarDieta();
                          }),
                    )
                  ],
                ),
              ),
              //CONTAINER COM A LISTA DA DIETA A SER EXIBA
              Expanded(
                child: ListView.builder(
                    itemCount: _itens.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            _itens[index],
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
