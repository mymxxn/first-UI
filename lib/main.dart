import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Additional(),
    ),
  );
}

// ignore: must_be_immutable
class Additional extends StatelessWidget {
  Additional({Key? key}) : super(key: key);
  bool value = true;
  
  @override
  Widget build(BuildContext context) {
    ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.purple,
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[800],
        title: const Text(
          "Additional Information",
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.share_outlined, color: Colors.grey[600]),
                  onPressed: () => Navigator.pop(context),
                ),
                title: const Text(
                  "Share Dukaan App",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                    size: 18,
                  ),
                  onPressed: () {},
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.font_download_outlined,
                      color: Colors.grey[600]),
                  onPressed: () => Navigator.pop(context),
                ),
                title: const Text(
                  "Change Language",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                    size: 18,
                  ),
                  onPressed: () {},
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.grey[600],
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                title: const Text(
                  "WhatsApp Chat Support",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Switch(value: value, onChanged: (val) {}),
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.lock_outline,
                    color: Colors.grey[600],
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                title: const Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon:
                      Icon(Icons.star_border_outlined, color: Colors.grey[600]),
                  onPressed: () => Navigator.pop(context),
                ),
                title: const Text(
                  "Rate Us",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.login,
                    color: Colors.grey[600],
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                title: const Text(
                  "Sign Out",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          bottom(),
        ],
      ),
    );
  }
}

Widget bottom() => Column(
      children: [
        Text(
          "Version",
          style: TextStyle(color: Colors.grey[350], fontSize: 20),
        ),
        const Text(
          "2.4.2",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
