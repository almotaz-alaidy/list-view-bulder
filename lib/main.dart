import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List myColors = ["gray", "blue", "black", "purple"];
  List color = [Colors.grey, Colors.blue, Colors.black, Colors.purple];
  List subtitleName = ["one", "two", "three", "foure"];
  List images = [
    Image(
      image: NetworkImage(
          "https://th.bing.com/th/id/R.8e8a17cf11441e39e7f969fb2fee6fea?rik=66MorsmcmTPVKw&riu=http%3a%2f%2fparisnajd.com%2fbackgd%2fdata%2fmedia%2f2%2f1600FG100_007.jpg&ehk=dmyNhjKB2nsdcKHjJQQOTyPjcMovNeA3TqEf7gxManc%3d&risl=&pid=ImgRaw&r=0"),
    ),
    Image(
      image: NetworkImage(
          "https://th.bing.com/th/id/R.aeb21ec6719d14f4f8737307033a0583?rik=8n6W7ahsrR0t4w&pid=ImgRaw&r=0"),
    ),
    Image(
      image: NetworkImage(
          "https://th.bing.com/th/id/OIP.cDJUyVA2dqS8aZuSlggTVQHaD4?pid=ImgDet&rs=1"),
    ),
    Image(
      image: NetworkImage(
          "https://th.bing.com/th/id/OIP.V_UdgYp8ypNBeEq7rRpJkQHaEo?pid=ImgDet&rs=1"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, i) {
              return ListTile(
                title: Text(myColors[i]),
                subtitle: Text(subtitleName[i]),
                leading: Icon(
                  Icons.man,
                  color: color[i],
                ),
                trailing:images[i],
              );
            },
          ),
        ),
      ),
    );
  }
}
