import 'package:flutter/material.dart';

void main() {
  runApp(MboteApp());
}

class MboteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            _buildBackground(),
            Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildOnboardingText(),
                  SizedBox(height: 80),
                  _buildButtons(),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(.1),
                    Colors.black.withOpacity(.65),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0, .6],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Image.network(
      'https://lh3.googleusercontent.com/proxy/Fp3MuGUpshzP_twAShQfH7xj9vdMKDP5ZJuzS6qwjmd5H6GYxY4VdN8ouGs4slNKdtuj1N5cjAzTQFihbOsi3ORIXfEEzp9xlkUGe2GLl13qnBg3n3TQwVltUDczYNjC82T4OQWIV9PQfShlA4YV',
      fit: BoxFit.cover,
      height: 950,
    );
  }

  Widget _buildOnboardingText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 250,
          child: Text(
            'Provides convenience',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            'Eliminates the hastle of going to the market to purchase groceries',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextButton(
          onPressed: () => print('Get started tapped'),
          child: Text('Get Started'),
          style: TextButton.styleFrom(
            primary: Colors.black,
            fixedSize: Size.fromWidth(150),
            backgroundColor: Color(0xffF1B256),
            textStyle: TextStyle(fontWeight: FontWeight.bold),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        Center(
          child: InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Log in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            onTap: () => print('Log in tapped'),
          ),
        ),
      ],
    );
  }
}
