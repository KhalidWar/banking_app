import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    Key key,
    this.logo,
    this.merchant,
    this.price,
    this.date,
    this.onPress,
  }) : super(key: key);
  final String logo, date;
  final String merchant;
  final double price;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: size.width * 0.85,
        height: size.height * 0.05,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: size.height * 0.03,
                  child: SvgPicture.asset(logo),
                ),
                SizedBox(width: size.width * 0.03),
                Container(
                  width: size.width * 0.28,
                  child: Text(
                    merchant,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 18),
                  ),
                ),
              ],
            ),
            Container(
              width: size.width * 0.1,
              child: Text(
                date,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
              ),
            ),
            Text(
              '\$$price',
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    fontSize: 18,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
