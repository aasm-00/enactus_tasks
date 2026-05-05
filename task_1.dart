import 'package:flutter/material.dart';

void main() => runApp(const EnactusProfileApp());

class EnactusProfileApp extends StatelessWidget {
  const EnactusProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: enactus_profile() );
  }
}

class enactus_profile extends StatelessWidget {
  const enactus_profile({super.key});


  @override
  Widget build(BuildContext context) {
    String memberName = "Assem";
    int points = 1550;
    bool isLead = true;

    String status = (isLead == true) ? "Team Leader" : "Active Member";
    Color statusColor = isLead ? Colors.green : Colors.red;

    return Scaffold(
      appBar: AppBar(
        title: Text("Enactus Profile",
            style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),



      body: Center(
        child: Container(
          height: 105,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
              border: BoxBorder.all(width: 3)),

          child: Column(
            children: <Widget> [
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 25, color: Colors.deepPurple),
                  children: [
                    TextSpan(text: "Member Name: "),
                    TextSpan(
                      text: memberName,
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),],),),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 25, color: Colors.deepPurple),
                  children: [
                    TextSpan(text: "Member Points: "),
                    TextSpan(
                      text: "$points",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),],),),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 25, color: Colors.deepPurple),
                  children: [
                    TextSpan(text: "Member Status: "),
                    TextSpan(

                      text: status,
                      style: TextStyle(color: statusColor, fontWeight: FontWeight.bold),
                    ),],),),

            ],
          ),
        ),
      ),
    );
  }
}
