import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    Key key,
    this.iconData,
    this.label,
    this.onPress,
  }) : super(key: key);

  final IconData iconData;
  final String label;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(color: Colors.black),
      ),
      leading: Icon(
        iconData,
        color: Colors.black,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
      onTap: onPress,
    );
  }
}
