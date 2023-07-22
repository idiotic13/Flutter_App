// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, duplicate_ignore, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(title: 'Login'),
      theme: ThemeData.dark(),
      title: 'Campus App',
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  Widget hbar = Container(
    height: 200,
    decoration: BoxDecoration(
      border: Border.all(
        width: 1.5,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(9),
      color: Color.fromARGB(255, 248, 94, 83),
    ),
    padding: EdgeInsets.all(10),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 50, 33, 70))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AcadsPage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text(
              'Announcements',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
              //textAlign: a ,
            ),
            SizedBox(height: 25),
            hbar,
            SizedBox(height: 35),
            hbar,
            SizedBox(height: 35),
            hbar,
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ), */
        body: Container(
      color: Colors.black,
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/1.jpeg'),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 21.0,
                      letterSpacing: 1.5,
                      fontFamily: 'SpaceGrotesk',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  const Text(
                    'Please sign in to continue',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  const TextField(
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      labelText: 'Enter Password',
                      labelStyle: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.right,
                        style:
                            TextStyle(color: Color.fromARGB(225, 194, 85, 13)),
                      )),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyHomePage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      foregroundColor: Colors.black, primary: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color.fromARGB(255, 187, 12, 0)),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Don't have an account? Please Sign Up first.",
                    style: TextStyle(color: Color.fromARGB(225, 194, 85, 13)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class messmenu extends StatelessWidget {
  const messmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 50, 33, 70))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 1',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 2',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 3',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 4',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 5',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 6',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 7',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 8',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 9',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 10',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 11',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 12',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.menu_open_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Hall 13',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return h1();
                    }));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AcadsPage extends StatelessWidget {
  const AcadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Column(children: [
        Text('acads'),
      ]),
    );
  }
}

class EventsPage extends StatelessWidget {
  EventsPage({super.key});

  Widget hbar = Container(
    height: 200,
    decoration: BoxDecoration(
      border: Border.all(
        width: 1.5,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(9),
      color: Color.fromARGB(255, 248, 94, 83),
    ),
    padding: EdgeInsets.all(10),
    //child: Text(),
    //: EdgeInsets.all(20),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 10),
            hbar,
            SizedBox(height: 35),
            hbar,
            SizedBox(height: 35),
            hbar,
          ],
        ),
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        SizedBox(height: 10),
        Container(
          padding: EdgeInsetsDirectional.only(start: 15, top: 10, bottom: 10),
          child: Text(
            'COUNCILS',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return sntpage();
                    }));
                  },
                  child: Column(
                    children: [
                      Text('01'),
                      Text('Science and Technology Council'),
                    ],
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AnCpage();
                    }));
                  },
                  child: Column(
                    children: [
                      Text('02'),
                      Text('Academics and Career Council'),
                    ],
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return GnSpage();
                    }));
                  },
                  child: Column(
                    children: [
                      Text('03'),
                      Text('Games and Sports Council'),
                    ],
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MnCpage();
                    }));
                  },
                  child: Column(
                    children: [
                      Text('04'),
                      Text('Media and Cultural Council'),
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsetsDirectional.only(top: 10, bottom: 10, start: 15),
          child: Text(
            'CELLS',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () =>
                            launchUrl(Uri.parse('https://eciitk.com/')),
                        child: Text('Election Commission'),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () =>
                            launchUrl(Uri.parse('https://www.ecelliitk.org/')),
                        child: Text('Enterpreneurship Cell'),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => launchUrl(Uri.parse(
                            'https://kaushik3012.github.io/outreach-cell-temp/index.html')),
                        child: Text('Outreach Cell'),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () =>
                            launchUrl(Uri.parse('https://voxiitk.com/')),
                        child: Text('Vox Populi'),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => launchUrl(
                            Uri.parse('https://cwciitk.wordpress.com/')),
                        child: Text('Community Welfare Cell'),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}

class sntpage extends StatelessWidget {
  const sntpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Padding(
          padding: EdgeInsetsDirectional.all(12),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  //Image.assset
                  InkWell(
                    onTap: () => launchUrl(Uri.parse('https://pclub.in/')),
                    child: Text(
                      '01 Programming Club',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),

                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://sntiitk.com/entities/page.html?robocb')),
                    child: Text(
                      '02 Robotics Club',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://sntiitk.com/entities/page.html?astroc')),
                    child: Text(
                      '03 Astronomy Club',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://sntiitk.com/entities/page.html?aerocb')),
                    child: Text(
                      '04 AeroModelling Club',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://sntiitk.com/entities/page.html?eclub')),
                    child: Text(
                      '05 Electronics Club',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://sntiitk.com/entities/page.html?fdg')),
                    child: Text(
                      '06 Finance and Analytics Club',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://sntiitk.com/entities/page.html?rchg')),
                    child: Text(
                      '07 Speedcubing Club',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class AnCpage extends StatelessWidget {
  const AnCpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Padding(
          padding: EdgeInsetsDirectional.all(12),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  //Image.assset
                  InkWell(
                    onTap: () =>
                        launchUrl(Uri.parse('https://anciitk.in/about.html')),
                    child: Text(
                      '01 Academics Wing',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  InkWell(
                    onTap: () =>
                        launchUrl(Uri.parse('https://anciitk.in/service.html')),
                    child: Text(
                      '02 Research Wing',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  InkWell(
                    onTap: () =>
                        launchUrl(Uri.parse('https://anciitk.in/ir.html')),
                    child: Text(
                      '03 International Relations Wing ',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  InkWell(
                    onTap: () =>
                        launchUrl(Uri.parse('https://anciitk.in/crdev.html')),
                    child: Text(
                      '04 Career Development Wing',
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class GnSpage extends StatelessWidget {
  const GnSpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Padding(
          padding: EdgeInsetsDirectional.all(12),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  //Image.assset
                  Text(
                    '01 Programming Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '02 Robotics Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '03 Astronomy club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '04 Aeromodelling Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '05 Electronics Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '06 Finance & Analytics Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '07 SpeedCubing Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class MnCpage extends StatelessWidget {
  const MnCpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Padding(
          padding: EdgeInsetsDirectional.all(12),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  //Image.assset
                  Text(
                    '01 Programming Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '02 Robotics Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '03 Astronomy club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '04 Aeromodelling Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '05 Electronics Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '06 Finance & Analytics Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Text(
                    '07 SpeedCubing Club',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class h1 extends StatelessWidget {
  const h1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h2 extends StatelessWidget {
  const h2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h3 extends StatelessWidget {
  const h3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h4 extends StatelessWidget {
  const h4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h5 extends StatelessWidget {
  const h5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h6 extends StatelessWidget {
  const h6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h7 extends StatelessWidget {
  const h7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h8 extends StatelessWidget {
  const h8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h9 extends StatelessWidget {
  const h9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h10 extends StatelessWidget {
  const h10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h11 extends StatelessWidget {
  const h11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h12 extends StatelessWidget {
  const h12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class h13 extends StatelessWidget {
  const h13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 240, 101, 115),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(174, 32, 30, 30),
        title: Text('Hello, Rithwin!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 164, 119, 216))),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.grey,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.grey[800],
          child: Column(children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 40),
                child: Row(
                  children: [
                    //Image.asset(#),
                    Column(
                      children: [
                        Text(
                          'Rithwin',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red[300],
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '@ksupendra22',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                  ),
                  title: const Text('Home',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu,
                  ),
                  title: const Text('Mess Menu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const messmenu();
                    }));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  title: const Text('Academics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AcadsPage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  title: const Text('Calender',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {},
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                  ),
                  title: const Text('Events',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EventsPage();
                      },
                    ));
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.menu_open_sharp,
                  ),
                  title: const Text('Explore',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ExplorePage();
                        },
                      ),
                    );
                  },
                  hoverColor: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  title: const Text('Back',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.black12,
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 465,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 248, 189, 10),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Thursday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Friday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
