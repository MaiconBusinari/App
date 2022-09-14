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

    void addAvaliacaoData(Avaliacoes avaliacoes){
      setState(() {
        avaliacoesList.add(avaliacoes);
      });
    }

    void showAvaliacoesAdd() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: avaliacaoAdd(addAvaliacaoData),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showAvaliacoesAdd,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Avaliação Fisica'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              margin: EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
                title: Text(
                  avaliacoesList[index].data,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
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
    );
  }
}
