import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: SafeArea(
          child: Scaffold(
              body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('assets/me.jpg'),
              ),
              const Text(
                'Janvi Yadav',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30.0,
                  color: Color.fromRGBO(107, 172, 226, 1),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'about');
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue[300],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'About Me',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://github.com/janviiyadavv');
                  _launchUrl(_url);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue[300],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.code),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Github',
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse(
                      'https://www.linkedin.com/in/janvi-yadav-3a57941a9');
                  _launchUrl(_url);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue[300],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.people),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Linkedin',
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url =
                      Uri.parse('mailto:janvi.yadav01234@gmail.com');
                  _launchUrl(_url);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue[300],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.email_outlined),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Email',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
