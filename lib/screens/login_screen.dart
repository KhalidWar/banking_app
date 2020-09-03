import 'package:banking/constants.dart';
import 'package:banking/screens/home_screen.dart';
import 'package:banking/widgets/username_password_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kStackBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: size.height * 0.7,
            width: size.width * 0.85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.2,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Text(
                    'Logo Here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.1),
                Text(
                  'Login',
                  style: GoogleFonts.nunito(
                    fontSize: 50,
                    color: kStackBackgroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                UsernamePasswordFields(label: 'Username', isPassword: false),
                SizedBox(height: size.height * 0.005),
                UsernamePasswordFields(label: 'Password', isPassword: true),
                SizedBox(height: size.height * 0.03),
                FlatButton(
                    color: kStackBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Container(
                      width: size.width * 0.6,
                      height: size.height * 0.05,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('Sign In',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: Colors.white)),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    }),
                SizedBox(height: size.height * 0.005),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot username/password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
