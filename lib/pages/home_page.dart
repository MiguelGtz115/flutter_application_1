import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabs/burger_tab.dart';
import 'package:flutter_application_1/tabs/donut_tab.dart';
import 'package:flutter_application_1/tabs/pancake_tab.dart';
import 'package:flutter_application_1/tabs/pizza_tab.dart';
import 'package:flutter_application_1/tabs/smoothie_tab.dart';
import 'package:flutter_application_1/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = <Widget>[
    const MyTab(
      iconPath: 'lib/icons/donut',
    ),
    const MyTab(
      iconPath: 'lib/icons/burger',
    ),
    const MyTab(
      iconPath: 'lib/icons/smoothie',
    ),
    const MyTab(
      iconPath: 'lib/icons/pancackes',
    ),
    const MyTab(
      iconPath: 'lib/icons/pizza',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.grey[800],
                ),
              ),
              actions: const [Icon(Icons.person)]),
          body: Column(children: <Widget>[
            //1. Texto principal
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(children: [
                Text("I want to ",
                    style: TextStyle(
                      //tamaño de letra
                      fontSize: 32,
                      //negrita
                      //subrayado
                    )),
                Text("Eat",
                    style: TextStyle(
                        //tamaño de letra
                        fontSize: 32,
                        //negrita
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline))
              ]),
            ),

            //2. pestañas (TabBar)
            TabBar(tabs: myTabs),

            //3.contenido de pestañas(TabBarView)
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PanCakeTab(),
                PizzaTab()
              ]),
            )
            //4.Carrito(Cart)
          ])),
    );
  }
}
