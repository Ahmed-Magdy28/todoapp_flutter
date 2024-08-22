import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            alignment: Alignment.center,
            color: Colors.grey[200],
            child: Row(
              children: [
                const SizedBox(width: 40),
                Image.asset("assets/images/todo.png", height: 65),
                const SizedBox(width: 8),
                const Text(
                  "Todo App",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              launchUrl(Uri.parse("https://www.ahmedmagdy.tech/"));
            },
            leading: const ImageIcon(
              AssetImage("assets/images/me.png"),
              size: 30,
            ),
            title: const Text(
              "About Me",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {
              launchUrl(Uri.parse("mailto:ahmedmagdy2849@gmail.com"));
            },
            leading: Icon(
              MdiIcons.email,
            ),
            title: const Text(
              "Contact Me",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {
              launchUrl(Uri.parse("https://www.facebook.com/AhMeDMaGDY284/"));
            },
            leading: Icon(
              MdiIcons.facebook,
            ),
            title: const Text(
              "Facebook",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {
              launchUrl(Uri.parse("https://twitter.com/AhMeDMaGDY1428"));
            },
            leading: Icon(
              MdiIcons.twitter,
            ),
            title: const Text(
              "twitter",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {
              launchUrl(Uri.parse("https://wa.me/201069219119"));
            },
            leading: Icon(
              MdiIcons.whatsapp,
            ),
            title: const Text(
              "whatsapp",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {
              launchUrl(
                  Uri.parse("https://www.linkedin.com/in/ahmedmagdy2849/"));
            },
            leading: Icon(
              MdiIcons.linkedin,
            ),
            title: const Text(
              "Linkedin",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
