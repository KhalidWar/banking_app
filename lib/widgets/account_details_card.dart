import 'package:banking/dummy_data/accounts_list.dart';
import 'package:banking/screens/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountDetailsCard extends StatelessWidget {
  const AccountDetailsCard({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final AccountScreen widget;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isCredit = accountsList[widget.index].isCredit;

    return Container(
      width: size.width * 0.85,
      height: size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Text(
              '${widget.accountType}',
              style: Theme.of(context).textTheme.headline5,
            ),
            isCredit
                ? Positioned(
                    top: 5,
                    right: 0,
                    child: SvgPicture.asset('lib/dummy_data/icons/visa.svg'),
                  )
                : Container(),
            Positioned(
              top: 30,
              child: Text(
                'Acct # ${widget.acctNumber}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                '\$${widget.balance}',
                style: Theme.of(context).textTheme.headline3.copyWith(
                    color: Colors.green[600], fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
