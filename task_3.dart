import 'package:flutter/material.dart';


void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Enactus Projects Dashboard",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}





class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(

        title: Text("Dashboard",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,

          ) ,
        ),

        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),


      body: Column(
        children: [

          const ProjectCard(
            projectName: "Project 1",
            projectType: "IT",
            themeColor: Colors.black,
          ),

          const ProjectCard(
            projectName: "Project 2",
            projectType: "BA",
            themeColor: Colors.amber,
          ),

          const ProjectCard(
            projectName: "Project 3",
            projectType: "PBIS",
          ),

          const ProjectCard(
            projectName: "Project 4",
            projectType: "MA",
            themeColor: Colors.brown,
          ),
        ],
      ),
    );
  }
}








class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.projectName,
    required this.projectType,
    this.themeColor = Colors.blue,
  });

  final String projectName;
  final String projectType;
  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: themeColor,
        borderRadius: BorderRadius.circular(15),
      ),


      child: Row(
        children: [
          Icon(Icons.task, color: Colors.white, size: 40),
          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 5),
                Text(
                  projectType,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
