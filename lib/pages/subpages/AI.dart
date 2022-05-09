import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AI extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 6,
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
                new Tab(icon: new Icon(Icons.wb_incandescent_outlined), text: 'AP/BEEE'),
                new Tab(icon: new Icon(Icons.g_translate_rounded), text: 'French'),
                new Tab(icon: new Icon(Icons.format_shapes_rounded), text: 'CAEG'),
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
          French(5),
          CAEG(6)
        ],
      ),
    ),
  );

  Widget Maths(int) => Scaffold(
    backgroundColor: Colors.blue,
    body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        new RichText(
          text: new TextSpan(
            text: 'Semester 1',
            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),),
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
                'UNIT 1  Matrix Theory',
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
            'Introduction, Rank of a Matrix - Echelon form, Normal form, Gauss Elimination, Eigen values and Eigen vectors, Cayley-Hamlton theorem, Diagonlization of a matrix etc..',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
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
                'UNIT 2   Differential Calculus-I',
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
          '''Mean value theorems: Rolle's theorem, Lagrange's Mean value theorem with their Geometrical Interpretation and applications, Cauchy's Mean value Theorem, Taylor's theorem with remainders, Taylor's and Maclaurin's expansions.''',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
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
                'UNIT 3   Diffrential Calculus-II',
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
            '''Functions of several variables, Partial differentiation, Total differentiation, Change of variables - Jacobian's, Functional dependence and independence, Maxima and Minima of functions of several variables (2 and 3 variables) - Lagrange's method of multipliers, Taylors theorem for two variables.''',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
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
                'UNIT 4   First Order Ordinary DF..',
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
            '''Geometric interpretation of solutions of first-order ODE y = f(x, y), Exact differential equations, Integrating factors, Linear and Bernoulli's equations, Applications- Orthogonal trajectories, Newton's Law of cooling, law of natural growth/decay.''',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
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
                'UNIT 5  Higher Order Ordinary DF..',
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
            ''' Higher-order linear differential equations with constant coefficients - Homogeneous and Non-homogeneous term of the type ex, sinax, cosax, x", vand xv, Equations with Variable Coefficients: Cauchy's and Legender's differential equations, Method of variation of parameters, Applications: Electrical Circuits.''',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1XqHUhTR0Zy918E9OFiMz0GENhHa94B4H?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
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
                'UNIT 1 - We All Are Indians First by Dr. Prashanth Bhatt',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      //offset: Offset(10.0, 10.0),
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
            'Reading - Reading and its importance, techniques of effective reading. Writing - Phrases, clauses, and sentences & Paragraph Writing Expansion of Proverbs Action speaks louder than words. Speaking - Role plays and Informal Conversations. Grammar -Parts of Speech, Parsing. Vocabulary - Word formation: Affixations and Root words.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  enableJavaScript: true,);
              },
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
                'UNIT 2 -  The Cutoff by Chetan Bhagat',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      //offset: Offset(10.0, 10.0),
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
            'Reading - Techniques for effective comprehension (Comprehension Practice Tests). Writing - Techniques for writing precisely and Punctuations. Speaking - Small Talk and Extempore speaking. Grammar - Question tags and Subject-verb agreement. Vocabulary - Homophones, Homographs, Homonyms, and Loan Words.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
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
                '''UNIT 3 - SatyaNadella's Email to Employees on First Day as CEO''',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      //offset: Offset(10.0, 10.0),
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
            'Reading - Skimming and scanning (Comprehension Practice Tests). Writing - Formal, Informal Letters and E-mails. Speaking - Group Discussions. Grammar - Modals and Tenses. Vocabulary - Synonyms, Antonyms & Phrasal verbs.',            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
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
                '''UNIT 4 - Steve Job's Speech''',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      //offset: Offset(10.0, 10.0),
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
          'Reading - Intensive and extensive reading (Comprehension Practice Tests). Writing - Note making, Note Taking. Speaking - Presentations & Public Speaking. Grammar - Active and passive voice. Vocabulary - One-word substitutes.',            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
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
                'UNIT 5 - Soft Skills-Adaptability, First things first, Goal Setting & Career Planning.',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                      //offset: Offset(10.0, 10.0),
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
          'Reading - Reading Comprehension passages. Writing - Essay Writing Speaking - Debates. Grammar - Conditional sentences. Vocabulary - Technical vocabulary.',            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1UcLi5UER2rqGhyVQMfjOyJfnJ80RnupP?usp=sharing';
                await launch(url,
                  //forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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
            TextButton(
              child: Text('Notes & Materials'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
            ),
            TextButton(
              child: Text('Question Bank'),
              onPressed: () async {
                final url = 'https://drive.google.com/drive/folders/1bXPXWzwI79gurSTItOWXP4obYHTLfLfE?usp=sharing';
                await launch(url,
                  forceWebView: true,
                  enableJavaScript: true,);
              },
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

  Widget French(int) => Scaffold(
    backgroundColor: Colors.blue,
  );
  Widget CAEG(int) => Scaffold(
    backgroundColor: Colors.blue,
  );
}
