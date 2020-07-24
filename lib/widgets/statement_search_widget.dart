import 'package:flutter/material.dart';

class SearchStatementWidget extends StatelessWidget {
  const SearchStatementWidget({
    Key key,
    this.child,
    this.label,
    this.onPress,
  }) : super(key: key);

  final Widget child;
  final String label;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPress,
      child: Container(
        width: size.width * 0.3,
        height: size.height * 0.05,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                offset: Offset(0, 2.0),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            child,
            SizedBox(width: 5),
            Text(label),
          ],
        ),
      ),
    );
  }
}
