import 'package:banking/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileIconButton extends StatelessWidget {
  const ProfileIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
      },
      child: Container(
        width: size.width * 0.1,
        padding: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(),
        child: SvgPicture.asset('lib/dummy_data/icons/profile_pic.svg'),
      ),
    );
  }
}
