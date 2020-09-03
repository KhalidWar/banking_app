import 'package:banking/constants.dart';
import 'package:flutter/material.dart';

class AccountsCard extends StatelessWidget {
  const AccountsCard({
    Key key,
    @required this.accountType,
    @required this.acctNumber,
    @required this.balance,
    this.index,
    this.onPress,
  }) : super(key: key);

  final String accountType;
  final double balance;
  final int acctNumber;
  final int index;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        elevation: 2.5,
        margin: EdgeInsets.symmetric(vertical: 4.5, horizontal: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$accountType',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontSize: 20)),
              Text('... $acctNumber',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.grey)),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '\$${balance.toStringAsFixed(1)}',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kCashColor, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
