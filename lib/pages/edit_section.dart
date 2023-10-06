import 'package:flutter/material.dart';

class EditSection extends StatefulWidget {
  const EditSection({super.key});

  @override
  State<EditSection> createState() => _EditSectionState();
}

class _EditSectionState extends State<EditSection> {
  String? selectedItem = "09:00";
  String? selectedItem2 = "17:00";
  List<String> items = [
    "09:00",
    "10:00",
    "11:00",
    "12:00",
    "13:00",
    "14:00",
    "15:00",
    "16:00",
    "17:00"
  ];
  List<String> items2 = ["Aberto", "Fechado"];
  String? selectedItem3 = "Fechado";

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
            'Editar sobre',
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
              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
              child: Text(
                'Horário de atendimento',
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 10.0),
                  child: SizedBox(
                    width: 140.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      initialValue: "Segunda-feira",
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem = item),
                    value: selectedItem,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 5.0), child: Text("ás")),
                SizedBox(
                  width: 100.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem2 = item),
                    value: selectedItem2,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 10.0),
                  child: SizedBox(
                    width: 140.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      initialValue: "Terça-feira",
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem = item),
                    value: selectedItem,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 5.0), child: Text("ás")),
                SizedBox(
                  width: 100.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem2 = item),
                    value: selectedItem2,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 10.0),
                  child: SizedBox(
                    width: 140.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      initialValue: "Quarta-feira",
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem = item),
                    value: selectedItem,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 5.0), child: Text("ás")),
                SizedBox(
                  width: 100.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem2 = item),
                    value: selectedItem2,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 10.0),
                  child: SizedBox(
                    width: 140.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      initialValue: "Quinta-feira",
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem = item),
                    value: selectedItem,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 5.0), child: Text("ás")),
                SizedBox(
                  width: 100.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem2 = item),
                    value: selectedItem2,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 10.0),
                  child: SizedBox(
                    width: 140.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      initialValue: "Sexta-feira",
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem = item),
                    value: selectedItem,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 5.0), child: Text("ás")),
                SizedBox(
                  width: 100.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem2 = item),
                    value: selectedItem2,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 10.0),
                  child: SizedBox(
                    width: 140.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      initialValue: "Sábado",
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem = item),
                    value: selectedItem3,
                    items: items2
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 16.0),
                  child: SizedBox(
                    width: 140.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      initialValue: "Domingo",
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                  child: DropdownButton<String>(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    onChanged: (item) => setState(() => selectedItem = item),
                    value: selectedItem3,
                    items: items2
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Edifícios',
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('./assets/icon3.png'),
                    radius: 20.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              color: Color.fromARGB(255, 124, 43, 255),
                            ),
                            margin: EdgeInsets.fromLTRB(3.0, 0.0, 8.0, 0.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 22.0),
                            child: Text(
                              "Admistrador",
                              style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 200.0,
                            child: TextFormField(
                              initialValue: "@felipeluizz_",
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.edit,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('./assets/icon3.png'),
                    radius: 20.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              color: Color.fromARGB(255, 124, 43, 255),
                            ),
                            margin: EdgeInsets.fromLTRB(3.0, 0.0, 8.0, 0.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 22.0),
                            child: Text(
                              "Admistrador",
                              style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 200.0,
                            child: TextFormField(
                              initialValue: "@robertapaula20",
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.edit,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('./assets/icon3.png'),
                    radius: 20.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              color: Color.fromARGB(255, 124, 43, 255),
                            ),
                            margin: EdgeInsets.fromLTRB(3.0, 0.0, 8.0, 0.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 22.0),
                            child: Text(
                              "Admistrador",
                              style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 200.0,
                            child: TextFormField(
                              initialValue: "@21joaobotelho",
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.edit,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text('Localização',
                  style: TextStyle(
                      fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 15.0),
              child: TextFormField(
                initialValue: "Cidade ADM de MG",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text('Whatsapp',
                  style: TextStyle(
                      fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 15.0),
              child: TextFormField(
                initialValue: "+55 15 91234-5678",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text('E-mail',
                  style: TextStyle(
                      fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 15.0),
              child: TextFormField(
                initialValue: "edificiosul@governomg.com.br",
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
