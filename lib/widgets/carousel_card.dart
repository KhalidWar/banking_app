import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    Key key,
    this.cardNumber,
    this.cardOwner,
    this.cardIssuer,
    this.cardColor,
    this.expirationDate,
    this.ccv,
  }) : super(key: key);

  final String cardNumber;
  final String cardOwner;
  final String cardIssuer;
  final Color cardColor;
  final String expirationDate;
  final String ccv;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // width: size.width * 0.8,
      padding: EdgeInsets.all(size.width * 0.025),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.account_balance,
                  color: Colors.white, size: size.width * 0.12),
            ],
          ),
          Text(
            '$cardNumber',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white),
          ),
          Row(
            children: [
              Text(
                '$expirationDate',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white54),
              ),
              SizedBox(width: size.width * 0.05),
              Text(
                '$ccv',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white54),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardOwner,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white),
              ),
              SvgPicture.asset(
                cardIssuer,
                width: size.width * 0.1,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
