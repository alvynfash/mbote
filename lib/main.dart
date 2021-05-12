import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MboteApp());
}

class MboteApp extends GetMaterialApp {
  MboteApp()
      : super(
          initialRoute: '/appStarter',
          getPages: [GetPage(name: '/appStarter', page: () => AppStarter())],
        );
}

class AppStarter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            _buildBackground(),
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildTagline(),
                  SizedBox(height: 120),
                  _buildButtons(),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(.95),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0, .8],
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
      'https://cdn.asiatatler.com/asiatatler/i/ph/2020/07/03144009-gettyimages-1208790371_cover_2000x1334.jpg',
      fit: BoxFit.fitHeight,
      height: 930,
    );
  }

  Widget _buildTagline() {
    return Column(
      children: [
        Container(
          height: 120,
          width: 120,
          color: Colors.grey,
          child: Placeholder(),
        ),
        SizedBox(height: 24),
        _buildOnboardingText(),
      ],
    );
  }

  Widget _buildOnboardingText() {
    return Column(
      children: [
        Text(
          'Acess simple aux meilleur produits pas cher',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
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
          onPressed: () => Get.bottomSheet(
            Container(
              // color: Colors.white,
              height: 300,
            ),
            backgroundColor: Colors.white,
            barrierColor: Color(0xffF1B256),
          ),
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
              padding: const EdgeInsets.symmetric(vertical: 24),
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
