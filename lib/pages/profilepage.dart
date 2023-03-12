import 'package:flutter/material.dart';
import 'package:space_dummyproj/core/constants.dart';
import 'package:space_dummyproj/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Column(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          SizedBox(height: kDouble20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("User Name"),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text("Username@company.com"),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text("company.com"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkMode.value = !isDarkMode.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkMode,
          builder: (BuildContext context, dynamic isDark, Widget? child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
