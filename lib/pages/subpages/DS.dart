import 'package:flutter/material.dart';

class DS extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4,
    child: new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        toolbarHeight: 74,
        backgroundColor: Colors.blue,
        flexibleSpace: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new TabBar(
              indicatorColor: Colors.white,
              tabs: [
                new Tab(icon: new Icon(Icons.calculate_outlined), text: 'Maths'),
                new Tab(icon: new Icon(Icons.text_format_rounded), text:'English'),
                new Tab(icon: new Icon(Icons.desktop_windows_rounded), text: 'PPS'),
                new Tab(icon: new Icon(Icons.wb_incandescent_outlined), text: 'AP'),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: TabBarView(
        children: [
          Maths(1),
          English(2),
          PPS(3),
          Applied_Physics(4),
        ],
      ),
    ),
  );

  Widget Maths(int) => Scaffold(
    backgroundColor: Colors.blue,
    body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        M_UNIT_1(),
        Divider(),
        M_UNIT_2(),
        Divider(),
        M_UNIT_3(),
        Divider(),
        M_UNIT_4(),
        Divider(),
        M_UNIT_5(),
        Divider(),
        M_UNIT_6(),
        Divider(),
      ],
    ),
  );

  Widget M_UNIT_1() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/Maths.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 1',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget M_UNIT_2() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/Maths.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 2',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget M_UNIT_3() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/Maths.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 3',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget M_UNIT_4() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/Maths.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 4',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget M_UNIT_5() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/Maths.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 5',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
// space for cards from CNBar
  Widget M_UNIT_6() => Card(
    elevation: 100,
    color: Colors.transparent,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Padding(
            padding: EdgeInsets.all(50).copyWith(bottom: 0),
            child: Container(
              color: Colors.transparent,
            )
        ),
      ],
    ),
  );


  Widget English(int) => Scaffold(
    backgroundColor: Colors.blue,
    body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        E_UNIT_1(),
        Divider(),
        E_UNIT_2(),
        Divider(),
        E_UNIT_3(),
        Divider(),
        E_UNIT_4(),
        Divider(),
        E_UNIT_5(),
        Divider(),
        E_UNIT_6(),
        Divider(),

      ],
    ),
  );

  Widget E_UNIT_1() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/English.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 1',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget E_UNIT_2() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/English.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 2',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget E_UNIT_3() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/English.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 3',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget E_UNIT_4() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/English.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 4',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget E_UNIT_5() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/English.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 5',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
// space for cards from CNBar
  Widget E_UNIT_6() => Card(
    color: Colors.transparent,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Padding(
            padding: EdgeInsets.all(50).copyWith(bottom: 0),
            child: Container(
              color: Colors.transparent,
            )
        ),
      ],
    ),
  );


  Widget PPS(int) => Scaffold(
    backgroundColor: Colors.blue,
    body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        PPS_UNIT_1(),
        Divider(),
        PPS_UNIT_2(),
        Divider(),
        PPS_UNIT_3(),
        Divider(),
        PPS_UNIT_4() ,
        Divider(),
        PPS_UNIT_5(),
        Divider(),
        PPS_UNIT_6(),
        Divider(),

      ],
    ),
  );

  Widget PPS_UNIT_1() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/PPS-min.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 1',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget PPS_UNIT_2() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/PPS-min.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 2',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget PPS_UNIT_3() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/PPS-min.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 3',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget PPS_UNIT_4() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/PPS-min.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 4',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget PPS_UNIT_5() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/PPS-min.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 5',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
// space for cards from CNBar
  Widget PPS_UNIT_6() => Card(
    color: Colors.transparent,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Padding(
            padding: EdgeInsets.all(50).copyWith(bottom: 0),
            child: Container(
              color: Colors.transparent,
            )
        ),
      ],
    ),
  );

  Widget Applied_Physics(int) => Scaffold(
    backgroundColor: Colors.blue,
    body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        AP_UNIT_1(),
        Divider(),
        AP_UNIT_2(),
        Divider(),
        AP_UNIT_3(),
        Divider(),
        AP_UNIT_4(),
        Divider(),
        AP_UNIT_5(),
        Divider(),
        AP_UNIT_6(),
        Divider(),

      ],
    ),
  );

  Widget AP_UNIT_1() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/AP.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 1',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget AP_UNIT_2() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/AP.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 2',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget AP_UNIT_3() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/AP.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 3',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget AP_UNIT_4() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/AP.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 4',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
  Widget AP_UNIT_5() => Card(
    elevation: 100,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage('assets/AP.jpg'),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'UNIT 5',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Buy Cat'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Cat Food'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
// space for cards from CNBar
  Widget AP_UNIT_6() => Card(
    color: Colors.transparent,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Padding(
            padding: EdgeInsets.all(50).copyWith(bottom: 0),
            child: Container(
              color: Colors.transparent,
            )
        ),
      ],
    ),
  );

}
