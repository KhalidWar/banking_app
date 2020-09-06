import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'carousel_card.dart';

class ContactlessPayment extends StatefulWidget {
  const ContactlessPayment({
    Key key,
  }) : super(key: key);

  @override
  _ContactlessPaymentState createState() => _ContactlessPaymentState();
}

class _ContactlessPaymentState extends State<ContactlessPayment> {
  bool showNumbers = false;

  void showCardNumbers() {
    setState(() {
      showNumbers = !showNumbers;
    });
  }

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
        InkWell(
          onTap: showCardNumbers,
          child: CarouselSlider(
            options: CarouselOptions(
              height: size.height * 0.25,
              enlargeCenterPage: true,
            ),
            items: [
              CarouselCard(
                cardNumber:
                    showNumbers ? '4243 1672 8946 1834' : '**** **** **** 1834',
                expirationDate: '05/25',
                ccv: '862',
                cardOwner: 'Khalid War',
                cardIssuer: 'lib/dummy_data/icons/visa.svg',
                cardColor: kPrimaryColor,
              ),
              CarouselCard(
                cardNumber:
                    showNumbers ? '5519 6733 1475 3195' : '**** **** **** 3195',
                expirationDate: '10/26',
                ccv: '285',
                cardOwner: 'Khalid War',
                cardIssuer: 'lib/dummy_data/icons/mastercard2.svg',
                cardColor: Colors.red.shade900,
              ),
              CarouselCard(
                cardNumber:
                    showNumbers ? '4243 5577 4682 1736' : '**** **** **** 1736',
                expirationDate: '03/22',
                ccv: '791',
                cardOwner: 'Khalid War',
                cardIssuer: 'lib/dummy_data/icons/visa.svg',
                cardColor: Colors.black,
              ),
              CarouselCard(
                cardNumber:
                    showNumbers ? '5519 8216 7837 8349' : '**** **** **** 8349',
                expirationDate: '11/20',
                ccv: '461',
                cardOwner: 'Khalid War',
                cardIssuer: 'lib/dummy_data/icons/mastercard2.svg',
                cardColor: Colors.green.shade900,
              ),
            ],
          ),
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
