import 'package:flutter/material.dart';
import 'package:whats2/telas/camera.dart';
import 'package:whats2/telas/chamadas.dart';
import 'package:whats2/telas/conversas.dart';
import 'package:whats2/telas/status.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: principal(),
    );
  }
}

class principal extends StatefulWidget {
  const principal({Key? key}) : super(key: key);

  @override
  _principalState createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              labelPadding: EdgeInsets.symmetric(horizontal: 9),
              tabs: [
                Container(
                  width: 30,
                  child: const Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      const Tab(
                        child: Text('CONVERSAS'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      const Text('STATUS'),
                      const SizedBox(
                        width: 5,
                      ),
                      Tab(
                        icon: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [const Text('CHAMADAS')],
                  ),
                )
              ],
            ),
            backgroundColor: Color(0xff008069),
            elevation: 20,
          ),
          body: TabBarView(
            children: [
              DocumentosPage(),
              conversa(),
              status(),
              chamadas(),
            ],
          ),
        ),
      );
}
