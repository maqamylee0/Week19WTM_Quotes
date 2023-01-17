import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];
  var text = 'A';
  List<String> screen = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: screen.length,
                  itemBuilder: (context,index){
                  return  Text(screen[index],style: const TextStyle(fontSize: 30),);
                  })
              // Text('$screen',style: TextStyle(fontSize: 30),),
            ),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: alphabet.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                         setState(() {
                           // text = alphabet[index];
                           screen.add(alphabet[index]);
                         });
                      },
                      child: Container(
                          color: Colors.cyan,
                          child: Center(
                              child: Text(
                            alphabet[index],
                            style: const TextStyle(fontSize: 25),
                          ))),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
