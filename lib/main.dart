import 'package:flutter/material.dart';
import 'package:izi/widget/menu_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IZI Marketing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'IZI Marketing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> menus = [
    'Cartão Visita',
    'Panfleto',
    'Promoções',
    'Midias Sociais'
  ];

  Map<String, String> images = {
    'Cartão Visita':
        'https://image.flaticon.com/icons/png/512/1312/1312199.png',
    'Panfleto': 'https://image.flaticon.com/icons/png/512/829/829555.png',
    'Promoções': 'https://image.flaticon.com/icons/png/512/372/372856.png',
    'Midias Sociais':
        'https://image.flaticon.com/icons/png/512/2472/2472052.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Image.network(
            'https://stage.bein.com/fr/wp-content/uploads/2015/07/Izi-logo.png',
            height: 150,
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(25),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: menus
                  .map((element) => MenuItem(
                        label: element,
                        imgUrl: images[element]!,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Ajuda',
        child: Icon(Icons.add_alert),
      ),
    );
  }
}
