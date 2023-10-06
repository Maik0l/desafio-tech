import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  final String userName;
  final String bio;
  final String local;

  EditProfile({required this.userName, required this.bio, required this.local});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Salvar",
                  style: TextStyle(fontSize: 16.0, color: Colors.blue),
                ))
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            ),
          ),
          backgroundColor: Colors.grey[50],
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Editar perfil',
            style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Text(
                'Imagem de perfil',
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('./assets/edit.png'),
                  radius: 50.0,
                ),
              ),
            ),
            Text('Nome',
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 15.0),
              child: TextFormField(
                //   onChanged: (value) {
                //     String userName = value;
                //   },
                //   initialValue: "Valor",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Text('Bio',
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 15.0),
              child: TextFormField(
                //   onChanged: (value) {
                //     String userName = value;
                //   },
                //   initialValue: "Valor",

                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Text('Localização',
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 15.0),
              child: TextFormField(
                //   onChanged: (value) {
                //     String userName = value;
                //   },
                //   initialValue: "Valor",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Text('Administrador geral',
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 15.0),
              child: TextFormField(
                initialValue: "@paulo.oliveira32",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Moderadores',
                    style: TextStyle(
                        fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
                OutlinedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(color: Colors.blue)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)))),
                    onPressed: () {},
                    child: Text(
                      'Adicionar',
                      style: TextStyle(
                          fontFamily: "OpenSans",
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0),
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 15.0),
              child: TextFormField(
                initialValue: "@oliverpereiraa",
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.dangerous_rounded,
                      color: Colors.red[900],
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            TextFormField(
              initialValue: "@21joaobotelho",
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.dangerous_rounded,
                    color: Colors.red[900],
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
          ]),
        ),
      ),
    );
  }
}
