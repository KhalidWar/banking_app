import 'package:flutter/material.dart';

class ProfileIconButton extends StatelessWidget {
  const ProfileIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.account_circle),
        onPressed: () {
          //todo add onPress function
        });
  }
}
