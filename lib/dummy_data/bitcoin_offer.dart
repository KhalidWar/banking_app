import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BitcoinOffer extends StatelessWidget {
  const BitcoinOffer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Buy & Sell Bitcoin'.toUpperCase(),
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'with Debit & Credit Card',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Coming Soon',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Container(
          child: SvgPicture.asset(
            'lib/dummy_data/icons/bitcoin.svg',
            width: size.width * 0.25,
          ),
        ),
      ],
    );
  }
}
