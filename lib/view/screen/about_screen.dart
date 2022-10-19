import 'package:finalcontact/view/widget/company_widget.dart';
import 'package:finalcontact/view/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: headerWidget(
          backColor: Colors.pink,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: 'About Me',
          action: Container()),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      "https://mahitabdeveloper.com/wp-content/uploads/2022/04/1616967303769-300x300.jpg"),
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  "Mahitab Taha Mahmoud",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  "A Web developer trained incompatible design and Development of deferent templates, and then do projects with experience in e-commerce page projects. Using WordPress, seeking to leverage my design skills and back-end knowledge based on PHP & MYSQL to help the company implement creative ideas for web pages.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                  onPressed: () {
                    launchUrl(Uri.parse("https://mahitabdeveloper.com/"));
                  },
                  child: const Text('Conatct Me',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  "Thanks for our efforts",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.pink),
                ),
                SizedBox(height: size.height * 0.02),
                companyWidget(
                    size: size,
                    width: size.width * 0.2,
                    height: size.height * 0.08)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
