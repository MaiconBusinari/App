import 'package:app_maromba/Screens/Training/Abdomen.dart';
import 'package:app_maromba/Screens/Training/Aerobico.dart';
import 'package:app_maromba/Screens/Training/Braco.dart';
import 'package:app_maromba/Screens/Training/Costas.dart';
import 'package:app_maromba/Screens/Training/Peitoral.dart';
import 'package:flutter/material.dart';

class TrainingList extends StatefulWidget {
  const TrainingList({Key? key}) : super(key: key);

  @override
  State<TrainingList> createState() => _TrainingListState();
}

class _TrainingListState extends State<TrainingList> {
  DateTime _dateTime = DateTime.now();

  void _Calendario() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treinos'),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_month),
            onPressed: _Calendario,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text(
                "Dia :",
                style: TextStyle(fontSize: 28),
              ),
              Text(
                _dateTime.day.toString(),
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    children: [
                      Stack(alignment: Alignment.center, children: [
                        Ink.image(
                          image: AssetImage('assets/images/treinobraço.png'),
                          child: InkWell(onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Braco()));
                          }),
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Braço',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 26),
                        ),
                        Positioned(
                          bottom: 80,
                          child: Text(
                            'Biceps e Triceps',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[50],
                                fontSize: 23),
                          ),
                        )
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Stack(alignment: Alignment.center, children: [
                          Ink.image(
                            image: AssetImage('assets/images/treinopeito.png'),
                            child: InkWell(onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Peitoral()));
                            }),
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Peitoral',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26),
                          ),
                          Positioned(
                            bottom: 80,
                            child: Text(
                              '3x15',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[50],
                                  fontSize: 23),
                            ),
                          )
                        ]),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Stack(alignment: Alignment.center, children: [
                          Ink.image(
                            image: AssetImage('assets/images/aerobico.png'),
                            child: InkWell(onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Aerobico()));
                            }),
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Aeróbicos',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26),
                          ),
                          Positioned(
                            bottom: 80,
                            child: Text(
                              'Corpo Todo',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[50],
                                  fontSize: 23),
                            ),
                          )
                        ]),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Stack(alignment: Alignment.center, children: [
                          Ink.image(
                            image: AssetImage('assets/images/abdomen.png'),
                            child: InkWell(onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Abdomen()));
                            }),
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Abdômen',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26),
                          ),
                          Positioned(
                            bottom: 80,
                            child: Text(
                              'Faça em Casa',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[50],
                                  fontSize: 23),
                            ),
                          )
                        ]),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Stack(alignment: Alignment.center, children: [
                          Ink.image(
                            image: AssetImage('assets/images/costas.jpg'),
                            child: InkWell(onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Costas()));
                            }),
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Costas',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26),
                          ),
                          Positioned(
                            bottom: 80,
                            child: Text(
                              'e Ombros',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[50],
                                  fontSize: 23),
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
