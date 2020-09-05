import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MastercardOffer extends StatelessWidget {
  const MastercardOffer({
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
              'Pre-approved!'.toUpperCase(),
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Diamond Business Card',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Apply Now!'.toUpperCase(),
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Container(
          child: SvgPicture.asset(
            'lib/dummy_data/icons/mastercard.svg',
            width: size.width * 0.25,
          ),
        ),
      ],
    );
  }
}
