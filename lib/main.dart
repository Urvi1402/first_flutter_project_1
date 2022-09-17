import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
),
); //runApp
//the scaffold widget provides a basic skeleton for our app like an app bar, floating action buttons etc
//name of widget always starts with an upper case letter

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App!'),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),
      drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
          decoration: BoxDecoration(
          color: Colors.blueGrey,
      ),
        child: Text('Side Menu'),
      ),
      ListTile(
      title: const Text('Settings'),
      onTap: () {
        Navigator.pop(context);
      },
      ),
      ],
      ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child:Icon(
              Icons.star,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 14,
          ),



        ]
      ),

      body: Column(
        children: [
          SizedBox(
            height: 20,

          ),
          Center(
            child: Text('The Himalayas',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 35,

              ),
          ),
          ),
      SizedBox(
        height: 50,
      ),
      Image.network(
          'https://images.unsplash.com/photo-1643042281531-8b5c3922664a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
      SizedBox(
      height:35,

      ),
      Padding(
        padding: const EdgeInsets.all(7.0),
        child: Center(
        child: Text("The Himalayas abut or cross five countries: Bhutan, India, Nepal, China, and Pakistan. The Himalayan range is bordered on the northwest by the Karakoram and Hindu Kush ranges, on the north by the Tibetan Plateau, and on the south by the Indo-Gangetic Plain",
        style: TextStyle(
        color: Colors.black,
        fontSize: 20,
    ),
        ),

      ),
    ),
    ],
    )
    );





  }
}



//Text(
//           'Hey Ninjas!',
//           style: TextStyle(
//             fontSize: 24.0,
//             fontWeight: FontWeight.bold,
//             letterSpacing: 2.0,
//             color: Colors.grey[600],
//             fontFamily: 'QwitcherGrypen',


// Image(
//           image: NetworkImage('https://images.unsplash.com/photo-1643042281531-8b5c3922664a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
//           ),
//         ),

//Icon(
//           Icons.airport_shuttle,
//           color: Colors.lightBlue,
//           size: 50.0,