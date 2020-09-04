import 'package:flutter/material.dart';

import '../constants.dart';

class ReferralCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.05,
      width: size.width * 0.85,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: size.width / 20),
          Text(
            'Referral Code: ',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                ),
          ),
          Text(
            '1Y9S8MA7K',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.copy,
              color: Colors.white,
            ),
            onPressed: () {
              print('ACCESSED!!!!');
            },
          ),
        ],
      ),
    );
  }
}
