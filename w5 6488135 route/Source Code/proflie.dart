import 'package:flutter/material.dart';
import 'package:project/pages/home/home.dart';
import 'package:project/pages/favorite/favorite.dart';
import 'package:project/pages/list_flowers/list.dart';

class Aproflie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3;
  TextEditingController name = TextEditingController(text: 'Chalita');
  TextEditingController surname = TextEditingController(text: 'Rungfarangrong');
  TextEditingController birthday = TextEditingController(text: '24/04/2003');
  TextEditingController email =
      TextEditingController(text: 'Chalita.run@student.mahidol.ac.th');
  TextEditingController tel = TextEditingController(text: '083-999-9999');
  TextEditingController location =
      TextEditingController(text: 'Mahidol University, Salaya, Nakhonpathom');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFFC33355),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile/1.jpeg'),
            ),
            SizedBox(height: 10),
            SizedBox(height: 20),
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                labelText: 'Name',
                filled: true,
                fillColor: Color(0xFFF4EFE7),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: Color(0xFFF4EFE7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 7),
            TextFormField(
              controller: surname,
              decoration: InputDecoration(
                labelText: 'Surname',
                filled: true,
                fillColor: Color(0xFFF4EFE7),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: Color(0xFFF4EFE7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 7),
            TextFormField(
              controller: birthday,
              decoration: InputDecoration(
                labelText: 'Birthday',
                filled: true,
                fillColor: Color(0xFFF4EFE7),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: Color(0xFFF4EFE7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 7),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Color(0xFFF4EFE7),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: Color(0xFFF4EFE7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 7),
            TextFormField(
              controller: tel,
              decoration: InputDecoration(
                labelText: 'Tel.',
                filled: true,
                fillColor: Color(0xFFF4EFE7),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: Color(0xFFF4EFE7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 7),
            TextFormField(
              controller: location,
              decoration: InputDecoration(
                labelText: 'Location',
                filled: true,
                fillColor: Color(0xFFF4EFE7),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: Color(0xFFF4EFE7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                  {
              // Navigate to the first route when tapped.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstRoute()),
              );
                  }
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFDC5273),
                minimumSize: Size(160, 44),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Sign Out',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xffC33355),
        unselectedItemColor: const Color(0xffF9DDE3),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    ); 
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => Home(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        );
      case 1:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => Favorite(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        );
         case 2:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => MyApp(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        );
        case 3:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => Aproflie(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        );
    }
    
  }
}
class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGN OUT CONFIRM'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image above the "Add Name Flowers" text
            Image.asset(
              'assets/images/profile/1.jpeg', // Replace with your image asset path
              width: 300,
              height: 300,
            ),
            SizedBox(height: 10),
            Text(
              'CHALITA',
              style: TextStyle(fontSize: 30),
            ),
            // Text field for user input
            TextField(
              controller: _textFieldController,
              decoration: InputDecoration(labelText: 'Enter Your Name'),
            ),
            SizedBox(height: 20),
            // Elevated button to submit the data to the second page
            ElevatedButton(
              child: const Text('SIGN OUT'),
              onPressed: () {
                // Pass entered data to the second page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondPage(data: _textFieldController.text),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  // Declare the data variable to receive the data
  final String data;

  // Constructor to receive the data
  const SecondPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGN COMPLETE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SUBMIT COMPLETE',
              style: TextStyle(fontSize: 40),
            ),
            // Display the received data
            Text(
              'USER NAME: $data',
              style: TextStyle(fontSize: 20, color: Colors.blueAccent),
            ),
            ElevatedButton(
              child: const Text('GO HOME PAGE'),
              onPressed: () {
                // Pass entered data to the second page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
