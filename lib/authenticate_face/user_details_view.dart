import 'package:face_auth/model/user_model.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
    final UserModel user;
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/019/896/008/original/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png'),
            ),
            SizedBox(height: 16.0),
            Text(
              user.name!,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'About',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Skills',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(
                  label: Text('Flutter'),
                  backgroundColor: Colors.blue,
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Chip(
                  label: Text('Dart'),
                  backgroundColor: Colors.blue,
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Chip(
                  label: Text('Firebase'),
                  backgroundColor: Colors.blue,
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                // Add more skills here
              ],
            ),
          ],
        ),
      ),
    );
  }
}
