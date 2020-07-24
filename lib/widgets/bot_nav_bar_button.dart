import 'package:flutter/material.dart';

class BotNavBarButton extends StatelessWidget {
  const BotNavBarButton({
    Key key,
    this.label,
    this.backgroundColor,
    this.onPress,
  }) : super(key: key);
  final String label;
  final Color backgroundColor;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.06,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
