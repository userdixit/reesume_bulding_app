import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List edList =["BTECH","BE","BCA","BCOM","MBBS"];
  String? selectinEdu;
  bool isExp= false;
  List SkillList =[false,false,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume app"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          PopupMenuButton(color: Colors.black,shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),itemBuilder: (context) => [
            PopupMenuItem(child: Text("Setting",style: TextStyle(color: Colors.red.shade200),)),
            PopupMenuItem(child: Text("Proflie",style: TextStyle(color: Colors.red.shade200),)),
            PopupMenuItem(child: Text("Help",style: TextStyle(color: Colors.red.shade200),)),
          ],)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Personal"),
              enabled: true,
              leading: Icon(Icons.person_add_alt),
              tileColor: Colors.red.shade200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),

                      border: OutlineInputBorder(

                      ),
                      hintText: "Full Name",
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),

                      border: OutlineInputBorder(

                      ),
                      hintText: "Address",
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    title: Text("Expressies"),
                    enabled: true,
                    leading: Icon(Icons.person_add_alt),
                    tileColor: Colors.red.shade200,
                    trailing: Switch(activeColor: Colors.red,value:isExp ,onChanged: (value){
                      setState(() {
                        isExp = value;
                      });
                    },)
                  ),
                  Visibility(
                    visible: isExp,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(value: SkillList[0], onChanged: (value) {
                              setState(() {
                                SkillList[0]=value!;
                              });
                            },activeColor: Colors.red.shade200),
                            Text("Dart Languge"),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(value: SkillList[1], onChanged: (value) {
                              setState(() {
                                SkillList[1]=value!;
                              });
                            },activeColor: Colors.red.shade200),
                            Text("Swich Languge"),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(value: SkillList[2], onChanged: (value) {
                              setState(() {
                                SkillList[2]=value!;
                              });
                            },activeColor: Colors.red.shade200),
                            Text("Java Languge"),
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                      title: Text("Education"),
                      enabled: true,
                      leading: Icon(Icons.person_add_alt),
                      tileColor: Colors.red.shade200,
                      // trailing: Switch(activeColor: Colors.red,value:isExp ,onChanged: (value){
                      //   setState(() {
                      //     isExp = value;
                      //   });
                      // },)
                  ),
                  SizedBox(height: 10),
                 DropdownButton(items: edList.map((e) => DropdownMenuItem(child: Center(child: Text("$e")),value: e,)).toList(),
                   value: selectinEdu,
                   isExpanded: true,
                   dropdownColor: Colors.red.shade200,
                   hint: Center(child: Text("====Serch====")),
                   onChanged: (value) {
                   setState(() {
                     selectinEdu = value as String;
                   });
                 },)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
