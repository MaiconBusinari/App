import 'package:app_maromba/Screens/LoginAndRegister/EditProfileForm.dart';
import 'package:app_maromba/Screens/HomePage/AvFisica.dart';
import 'package:app_maromba/Screens/HomePage/DietList.dart';
import 'package:app_maromba/Screens/HomePage/TrainingList.dart';
import 'package:flutter/material.dart';
import 'package:app_maromba/Screens/LoginAndRegister/ChangePasswordForm.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Maromba'),
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Padding(
            padding: EdgeInsets.only(top: 48.0, left: 28),
            child: Column(
              children: <Widget>[
                Container(
                  height: 70,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                          radius: 42,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgLZal2ngrRXdEebFSXKENv_Joj38zpGXhwA&usqp=CAU')),
                      SizedBox(
                        width: 48,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Seja bem vindo, Pedro!',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          //TROCADA  FlatButton -> TextButton
                          TextButton(
                              //textColor: Colors.purple,
                              child: Text(
                                '    Alterar Senha',
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 16,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChangePasswordForm()));
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (_) => LoginForm())),
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
          Padding(
            padding: EdgeInsets.only(top: 150.0),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    MyMenu_1(
                      title: "Perfil",
                      icon: Icons.person,
                      warna: Colors.purple,
                    ),
                    MyMenu_2(
                      title: "Treinos",
                      icon: Icons.center_focus_strong,
                      warna: Colors.purple,
                    ),
                    MyMenu_3(
                      title: "Dieta",
                      icon: Icons.no_food,
                      warna: Colors.purple,
                    ),
                    MyMenu_4(
                      title: "Avaliação fisica",
                      icon: Icons.graphic_eq,
                      warna: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyMenu_1 extends StatelessWidget {
  MyMenu_1({required this.title, required this.icon, required this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple[50],
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EditProfileForm()));
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (_) => LoginForm())),
        },
        splashColor: Colors.purple,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: warna,
              ),
              Text(
                title,
                style: new TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenu_2 extends StatelessWidget {
  MyMenu_2({required this.title, required this.icon, required this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple[50],
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TrainingList()));
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (_) => LoginForm())),
        },
        splashColor: Colors.purple,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: warna,
              ),
              Text(
                title,
                style: new TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenu_3 extends StatelessWidget {
  MyMenu_3({required this.title, required this.icon, required this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple[50],
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Dietlist()));
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (_) => LoginForm())),
        },
        splashColor: Colors.purple,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: warna,
              ),
              Text(
                title,
                style: new TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenu_4 extends StatelessWidget {
  MyMenu_4({required this.title, required this.icon, required this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple[50],
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AvFisica()));
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (_) => LoginForm())),
        },
        splashColor: Colors.purple,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: warna,
              ),
              Text(
                title,
                style: new TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}


