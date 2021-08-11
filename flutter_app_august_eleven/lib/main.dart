import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _googleUrl = 'https://google.com';
const _instagramUrl = 'https://instagram.com';
const _facebookUrl = 'https://facebook.com';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'URL Launcher Practice',
			theme: ThemeData(
				primarySwatch: Colors.purple,
			),
			home: LauncherPage(),
		);
	}
}

class LauncherPage extends StatelessWidget {
	
  

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Container(
        decoration: BoxDecoration(color: Colors.amber),
			  child: Center(
			  	child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Give them a visit:", 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              
              child: Text("Go to Google"),
              onPressed: () => launchURL(_googleUrl),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text("Go to Instagram"),
              onPressed: () => launchURL(_instagramUrl),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text("Go to Facebook"),
              onPressed: () => launchURL(_facebookUrl),
            ),
          ],
        ),
      ),
			),
    );
  }

}
launchURL(String url) async => await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

// Future<String> tryToLaunch(url) async => await launch(url);

					