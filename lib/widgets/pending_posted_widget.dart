import 'package:flutter/material.dart';

class PendingPostedWidget extends StatelessWidget {
  const PendingPostedWidget({
    Key key,
    this.label,
    this.showAllTransactions,
  }) : super(key: key);
  final String label;
  final bool showAllTransactions;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 45, right: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.black54, fontSize: 15),
          ),
          showAllTransactions
              ? RichText(
                  text: TextSpan(
                    text: 'All transactions',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Colors.blue[300],
                        ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
