import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = ['Item'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Mohammed Wael Badawe",
          style: TextStyle(fontSize: 20, color: Colors.orange),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AnimatedContainer(
            alignment: Alignment.center,
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,
            ),
            duration: Duration(seconds: 3),
            curve: Curves.fastOutSlowIn,
            child: IconButton(
              onPressed: () {
                addItems();
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (BuildContext context, val) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        color: Colors.orange,
                        child: ListTile(
                          title: Text("${names[val]} ${val + 1}"),
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                deleteItem(val);
                              });
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void deleteItem(int index) {
    names.removeAt(index);
  }

  void addItems() {
    setState(() {
      names.add("Item");
    });
  }
}
