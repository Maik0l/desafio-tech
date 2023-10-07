import 'package:desafio_tech/pages/edit_profile.dart';
import 'package:desafio_tech/pages/edit_section.dart';
import 'package:flutter/material.dart';
import 'package:desafio_tech/classes/feed.dart';
import 'package:desafio_tech/components/feed_card.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Dados mockados para teste no app

  String userName = "Cidade ADM de MG";
  String bio = "Perfil Oficial da Cidade Administrativa de MG";
  String local = "Cidade administrativa";

  bool activity = true;

  List<Feed> feed = [
    Feed(
        name: "Cidade ADM de MG",
        username: "cidadeadm",
        message:
            "Lorem ipsum dolor sit amet consectetur. Nec scelerisque tristique dictumst sed. Sit etiam.",
        comments: "10",
        date: "12 dias"),
    Feed(
        name: "Cidade ADM de MG",
        username: "cidadeadm",
        message: "Lorem ipsum dolor sit amet consectetur.",
        comments: "10",
        date: "10 Mai"),
    Feed(
        name: "Cidade ADM de MG",
        username: "cidadeadm",
        message:
            "Lorem ipsum dolor sit amet consectetur. Praesent congue magna sapien leo. Nunc varius sed volutpat amet turpis. Eros tempus.",
        comments: "10",
        date: "10 Mai"),
  ];
  @override
  Widget build(BuildContext context) {
    /* Para simplificar um pouco eu fiz um ternário para trocar o conteúdo mostrado entre as 
    atividades e seções. Meu plano era componentizar muito mais o app, fazer componentes que ficaram se
     repetindo, mas não consegui por causa do tempo. Também queria componentizar as telas para diminuir o 
     tamanho da tela.*/

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                ),
                label: ""),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/minas.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/predio.jpg'),
                    radius: 40.0,
                  ),
                  Visibility(
                    visible: activity ? true : false,
                    child: OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                BorderSide(color: Colors.blue)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfile(
                                  userName: userName,
                                  bio: bio,
                                  local: local,
                                ),
                              ));
                          // Navigator.pushNamed(context, '/editProfile');
                          setState(() {
                            userName = userName;
                            bio = bio;
                            local = local;
                          });
                        },
                        child: Text(
                          'Editar perfil',
                          style: TextStyle(
                              fontFamily: "OpenSans",
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
                    child: Icon(
                      Icons.verified_rounded,
                      size: 16.0,
                      color: Colors.amber[600],
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
            ),
            Container(
              child: Text(
                bio,
                style: TextStyle(fontFamily: "OpenSans"),
              ),
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: Icon(
                    Icons.location_on_outlined,
                    size: 20.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  local,
                  style: TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.grey,
                      fontSize: 11.0),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 2.0, 0.0),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    size: 20.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Entrou em Jan/23',
                  style: TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.grey,
                      fontSize: 11.0),
                )
              ],
            ),
            Container(
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activity = true;
                    });
                  },
                  child: Text(
                    'Atividades',
                    style: TextStyle(
                        fontFamily: "OpenSans",
                        color: activity ? Colors.blue : Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activity = false;
                    });
                  },
                  child: Text(
                    'Sobre',
                    style: TextStyle(
                        fontFamily: "OpenSans",
                        color: activity ? Colors.grey : Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Avisos e Comunicados',
                  style: TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                )
              ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
              margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
            ),
            Divider(
              height: 30.0,
              color: Colors.blue,
              thickness: 1.0,
            ),
            Container(
              child: activity
                  ? Column(
                      children: feed
                          .map((feed) => FeedCard(
                                feed: feed,
                                name: userName,
                              ))
                          .toList(),
                    )
                  : Padding(
                      padding:
                          const EdgeInsets.fromLTRB(25.0, 10.0, 10.0, 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OutlinedButton(
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: Colors.blue)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditSection(),
                                    ));
                                // Navigator.pushNamed(context, '/editProfile');
                              },
                              child: Text(
                                'Editar seção sobre',
                                style: TextStyle(
                                    fontFamily: "OpenSans",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0),
                              )),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 16.0),
                            child: Text(
                              "Horário de atendimento",
                              style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 0.0),
                            child: Column(children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Segunda-Feira",
                                      style: TextStyle(
                                          fontFamily: "OpenSans",
                                          color: Colors.grey),
                                    ),
                                    Text("____________________",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("09:00  às  17:00",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Terça-Feira",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("________________________",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("09:00 às 17:00",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Quarta-Feira",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("_______________________",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("09:00 às 17:00",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Quinta-Feira",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("_______________________",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("09:00 às 17:00",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Sexta-Feira",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("_______________________",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("09:00 às 17:00",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Sábado-Feira",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("__________________________",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("Fechado",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 26.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Domingo",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("________________________________",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey)),
                                    Text("Fechado",
                                        style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.grey))
                                  ],
                                ),
                              )
                            ]),
                          ),
                          Text(
                            "Edifícios",
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./assets/icon3.png'),
                                      radius: 20.0,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "Edifício Sul",
                                              style: TextStyle(
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.verified_rounded,
                                                size: 16.0,
                                                color: Color.fromARGB(
                                                    255, 124, 43, 255),
                                              ),
                                              margin: EdgeInsets.fromLTRB(
                                                  3.0, 0.0, 8.0, 0.0),
                                            ),
                                            Text(
                                              "@edificiosul",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 80.0,
                                        width: 250.0,
                                        child: Text(
                                          "Edifício da Cidade Administrativa de MG",
                                          style:
                                              TextStyle(fontFamily: "OpenSans"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./assets/icon1.png'),
                                      radius: 20.0,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "Edifício Norte",
                                              style: TextStyle(
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.verified_rounded,
                                                size: 16.0,
                                                color: Color.fromARGB(
                                                    255, 124, 43, 255),
                                              ),
                                              margin: EdgeInsets.fromLTRB(
                                                  3.0, 0.0, 8.0, 0.0),
                                            ),
                                            Text(
                                              "@edificionorte",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 80.0,
                                        width: 250.0,
                                        child: Text(
                                          "Edifício da Cidade Administrativa de MG",
                                          style:
                                              TextStyle(fontFamily: "OpenSans"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./assets/icon2.png'),
                                      radius: 20.0,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "Edifício Central",
                                              style: TextStyle(
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.verified_rounded,
                                                size: 16.0,
                                                color: Color.fromARGB(
                                                    255, 124, 43, 255),
                                              ),
                                              margin: EdgeInsets.fromLTRB(
                                                  3.0, 0.0, 8.0, 0.0),
                                            ),
                                            Text(
                                              "@edificiocentral",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 80.0,
                                        width: 250.0,
                                        child: Text(
                                          "Edifício da Cidade Administrativa de MG",
                                          style:
                                              TextStyle(fontFamily: "OpenSans"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 16.0),
                            child: Text(
                              "Localização",
                              style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color.fromARGB(255, 124, 43, 255),
                              ),
                              Text(
                                "São Jorge 2ª Seção, Belo Horizonte - MG, 30451-102",
                                style: TextStyle(
                                    fontFamily: "OpenSans",
                                    color: Colors.grey,
                                    fontSize: 12.0),
                              )
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 15.0),
                              child: Image.asset("./assets/map.png")),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 12.0),
                            child: Text(
                              "Contato",
                              style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 6.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone_enabled,
                                  color: Color.fromARGB(255, 124, 43, 255),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    "+55 15 91234-5678",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.mail_outline,
                                color: Color.fromARGB(255, 124, 43, 255),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.0),
                                child: Text(
                                  "edificio@governomg.com.br",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
