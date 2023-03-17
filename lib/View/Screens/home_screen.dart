import 'package:flutter/material.dart';

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
        title: const Text(
          "Mohammed Wael Badawe",
          style: TextStyle(fontSize: 20, color: Colors.orange),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
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
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
            child: IconButton(
              onPressed: () {
                addItems();
              },
              icon: const Icon(
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
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
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
                            icon: const Icon(Icons.delete),
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
