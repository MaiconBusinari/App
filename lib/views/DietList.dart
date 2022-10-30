
import 'package:app_maromba/models_views/dieta_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// ignore: use_key_in_widget_constructors
class Dietlist extends StatefulWidget {
  @override
  State<Dietlist> createState() => _DietlistState();
}

class _DietlistState extends State<Dietlist> {
  DietaStore dietaStore = DietaStore();

  void adicionarDieta() async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        dietaStore.salvarDieta(itemController.text);
        //_itens.add(ItemController.text);
        itemController.clear();
      });
    }
  }

  final TextEditingController itemController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //BARRA DE NAVEGACAO DIETA
        appBar: AppBar(
          title: Text('Minha Dieta'),
        ),
        body: Observer(
            //ESPERANDO CARREGAR DIETA DO BANCO
            builder: (_) {
          if (dietaStore.isCarregando) {
            return const Center(
              child: SizedBox(
                  width: 100, height: 100, child: CircularProgressIndicator()),
            );
          }

          //CORPO DIETA
          return Padding(
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
                            controller: itemController,
                            style:
                                TextStyle(color: Colors.purple, fontSize: 18),
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
                        //itemCount: _itens.length,
                        itemCount: dietaStore.listDeComida.length,
                        itemBuilder: (context, index) {
                          final dieta = dietaStore.listDeComida[index];
                          return Card(
                            child: ListTile(
                                title: Text(
                                  dieta.comida,
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.delete,
                                          color: Colors.red),
                                      onPressed: () async {
                                        dietaStore.excluirDieta(dieta);
                                      },
                                    )
                                  ],
                                )),
                          );
                        }),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
