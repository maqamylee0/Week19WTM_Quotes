import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> alphabet = [
    'Love your family, work super hard, live your passion. — Gary Vaynerchuk',
    'Nature has given us all the pieces required to achieve exceptional wellness and health, but has left it to us to put these pieces together—Diane McLaren',
    'Concentrate all your thoughts upon the work in hand. The sun\'s rays do not burn until brought to a focus— Alexander Graham Bell',
    'Opportunity is missed by most people because it is dressed in overalls and looks like work.— Thomas Edison',
    'Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven\'t found it yet, keep looking. Don\'t settle. As with all matters of the heart, you\'ll know when you find it. — Steve Jobs',
    'Some women choose to follow men, and some choose to follow their dreams. If you’re wondering which way to go, remember that your career will never wake up and tell you that it doesn’t love you anymore— Lady Gaga',
    'Learn as if you will live forever, live like you will die tomorrow.— Mahatma Gandhi',
    'One of the differences between some successful and unsuccessful people is that one group is full of doers, while the other is full of wishers.— Edmond Mbiaka',
    'Be miserable. Or motivate yourself. Whatever has to be done, it\'s always your choice— Wayne Dyer',
    'Show up, show up, show up, and after a while the muse shows up, too—Isabel Allende',
    'If you believe something needs to exist, if it\'s something you want to use yourself, don\'t let anyone ever stop you from doing it.—Tobias Lütke',
    'Don\'t look at your feet to see if you are doing it right. Just dance―Anne Lamott',
    'Life can be much broader once you discover one simple fact: Everything around you that you call life was made up by people that were no smarter than you. And you can change it, you can influence it… Once you learn that, you\ll never be the same again—Steve Jobs',
     'What you do speaks so loudly that I cannot hear what you say.―Ralph Waldo Emerson',
    "If you really want to do something, you'll find a way. If you don't, you'll find an excuse. ―Jim Rohn",
    "Do not wait for the perfect time and place to enter, for you are already onstage",
    "Every strike brings me closer to the next home run — Babe Ruth",
    "If we take care of the moments, the years will take care of themselves.—Maria Edgeworth",
    "Sometimes magic is just someone spending more time on something than anyone else might reasonably expect.—Raymond Joseph Teller",
    "True humility is not thinking less of yourself; it is thinking of yourself less.— C.S. Lewis",
    'If the highest aim of a captain were to preserve his ship, he would keep it in port forever.—Thomas Aquinas',
    ];
  String screen = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 10,color: Colors.green)
              ),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(5),
              height: 200,
              child: SingleChildScrollView(child: Text(screen,style: const TextStyle(fontSize: 23,),))

              // Text('$screen',style: TextStyle(fontSize: 30),),
            ),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: alphabet.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                         setState(() {
                           // text = alphabet[index];
                           screen =alphabet[index];
                         });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(5)
                          ),

                          child: Center(
                              child: Text(
                            alphabet[index],
                            style: const TextStyle(fontSize: 15),
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
