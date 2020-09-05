import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class ContactlessPayment extends StatelessWidget {
  const ContactlessPayment({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * 0.25,
          height: 3,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: size.height * 0.25,
            enlargeCenterPage: true,
          ),
          items: [
            CarouselCard(
              cardNumber: '1834',
              cardOwner: 'Khalid War',
              cardIssuer: 'lib/dummy_data/icons/visa.svg',
              cardColor: kPrimaryColor,
            ),
            CarouselCard(
              cardNumber: '3195',
              cardOwner: 'Khalid War',
              cardIssuer: 'lib/dummy_data/icons/visa.svg',
              cardColor: Colors.red,
            ),
            CarouselCard(
              cardNumber: '1736',
              cardOwner: 'Khalid War',
              cardIssuer: 'lib/dummy_data/icons/visa.svg',
              cardColor: Colors.black,
            ),
            CarouselCard(
              cardNumber: '8349',
              cardOwner: 'Khalid War',
              cardIssuer: 'lib/dummy_data/icons/visa.svg',
              cardColor: Colors.green,
            ),
          ],
        ),
        Icon(
          Icons.fingerprint,
          color: kPrimaryColor,
          size: size.width * 0.2,
        ),
        Text('Use Fingerprint to Pay'),
        SizedBox(height: 1),
      ],
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    Key key,
    this.cardNumber,
    this.cardOwner,
    this.cardIssuer,
    this.cardColor,
  }) : super(key: key);

  final String cardNumber;
  final String cardOwner;
  final String cardIssuer;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.all(size.width * 0.02),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.account_balance,
                  color: Colors.white, size: size.width * 0.16),
            ],
          ),
          Text(
            '**** **** **** $cardNumber',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white),
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
                width: size.width * 0.12,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
