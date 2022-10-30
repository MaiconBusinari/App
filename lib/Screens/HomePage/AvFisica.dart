import 'package:app_maromba/Avaliacoes/avaliacoes.dart';
import 'package:app_maromba/Avaliacoes/avaliacoesAdd.dart';
import 'package:flutter/material.dart';

class AvFisica extends StatefulWidget {
  const AvFisica({Key? key}) : super(key: key);

  @override
  State<AvFisica> createState() => _AvFisicaState();
}

class _AvFisicaState extends State<AvFisica> {
  List<Avaliacoes> avaliacoesList = [];

  @override
  Widget build(BuildContext context) {
    //FUNCAO PARA ADICIONAR AVALIACAO A LISTA DE AVALIACOES

    //TIRAR DUVIDA------------------------------------------
    void addAvaliacaoData(Avaliacoes avaliacoes) {
      setState(() {
        avaliacoesList.add(avaliacoes);
      });
    }
    //TIRAR DUVIDA------------------------------------------

    //FUNCAO QUE EXIBE TELA DE ADICIONAR AVALIACOES
    void showAvaliacoesAdd() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            //CHAMA A FUNCAO QUE MOSTRA O QUE TERÁ NA TELA DE ADICONAR AVALIACOES

            //TIRAR DUVIDA------------------------------------------
            content: avaliacaoAdd(addAvaliacaoData),
            //TIRAR DUVIDA------------------------------------------
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      );
    }

    return Scaffold(
      //BARRA DE NAVEGACAO AVALIACOES
      appBar: AppBar(
        title: Text('Avaliação Fisica'),
      ),
      //CORPO AVALIACOES
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        //CONTAINER CRIA LISTA DE AVALICOES
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              margin: EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
                //CONTAINER QUE EXIBE DATA
                title: Text(
                  avaliacoesList[index].data,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                //CONTAINER QUE EXIBE PESO
                trailing: Text(
                  avaliacoesList[index].peso,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          },
          itemCount: avaliacoesList.length,
        ),
      ),
      //CONTAINER COM BOTAO QUE CHAMA FUNCAO ADICIONAR AVALIACOES
      floatingActionButton: FloatingActionButton(
        onPressed: showAvaliacoesAdd,
        child: Icon(Icons.add),
      ),
    );
  }
}
