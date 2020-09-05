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
        Container(
          height: size.height * 0.25,
          width: size.width * 0.8,
          padding: EdgeInsets.all(
            size.width * 0.03,
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
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
                      color: Colors.white, size: size.width * 0.16),
                ],
              ),
              Text(
                '**** **** **** 1834',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Khalid War',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
                  SvgPicture.asset('lib/dummy_data/icons/visa.svg',
                      width: size.width * 0.15, color: Colors.white),
                ],
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
