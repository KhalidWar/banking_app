import 'package:banking/constants.dart';
import 'package:banking/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool isBiometric = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_balance,
                  size: size.height * 0.2,
                ),
                SizedBox(height: size.height / 12),
                Greeting(),
                UsernamePasswordFields(label: 'Username', isPassword: false),
                SizedBox(height: size.height * 0.005),
                UsernamePasswordFields(label: 'Password', isPassword: true),
                EnableFingerprint(),
                FlatButton(
                    color: kPrimaryColor,
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
                SizedBox(height: size.height * 0.01),
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

class Greeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Welcome Back, '),
        Text(
          'Khalid',
          style: GoogleFonts.nunito(
            fontSize: 50,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class UsernamePasswordFields extends StatelessWidget {
  const UsernamePasswordFields({
    Key key,
    this.label,
    this.isPassword,
  }) : super(key: key);

  final String label;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      height: size.height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        border: Border.all(
            color: kPrimaryColor, style: BorderStyle.solid, width: 1.5),
      ),
      child: TextField(
        obscureText: isPassword ? true : false,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: label,
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class EnableFingerprint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width / 5),
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (isBiometric) {},
          ),
          Text('Enable Fingerprint'),
        ],
      ),
    );
  }
}
