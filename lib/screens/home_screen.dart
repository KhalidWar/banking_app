import 'package:banking/dummy_data/accounts_list.dart';
import 'package:banking/widgets/accounts_card.dart';
import 'package:banking/widgets/contactless_payment.dart';
import 'package:banking/widgets/profile_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constants.dart';
import 'account_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _show = true;

  ScrollController _scrollController = ScrollController();

  void showFAB() {
    setState(() {
      _show = true;
    });
  }

  void hideFAB() {
    setState(() {
      _show = false;
    });
  }

  void handleScroll() async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        hideFAB();
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        showFAB();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    handleScroll();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      floatingActionButton: Visibility(
        visible: _show,
        child: buildFloatingActionButton(),
      ),
      body: Container(
        width: double.infinity,
        height: size.height * 1,
        child: Stack(
          alignment: Alignment.topCenter,
          overflow: Overflow.visible,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  )),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Text(
                      'Good morning,\n',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.white54),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: Text(
                      'Khalid',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: ProfileIconButton(),
                  ),
                  Positioned(
                    top: 135,
                    right: 0,
                    child: Text(
                      'Total Balance',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.white54),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    right: 0,
                    child: Text(
                      '\$28,386.20',
                      style: Theme.of(context).textTheme.headline3.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: size.height / 4,
              left: size.width * 0.05,
              width: size.width * 0.9,
              height: size.height * 0.65,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      shrinkWrap: true,
                      itemCount: accountsList.length,
                      itemBuilder: (context, index) {
                        return AccountsCard(
                          index: index,
                          accountType: accountsList[index].accountType,
                          acctNumber: accountsList[index].acctNumber,
                          balance: accountsList[index].balance,
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AccountScreen(
                                  index: index,
                                  accountType: accountsList[index].accountType,
                                  acctNumber: accountsList[index].acctNumber,
                                  balance: accountsList[index].balance,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      //todo fix FAB background and icon color mismatch
      backgroundColor: Colors.white,
      child: Icon(Icons.contactless, color: kCashColor, size: 55),
      onPressed: () {
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) {
              return ContactlessPayment();
            });
      },
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(kAppTitle,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.white)),
      centerTitle: true,
      //todo fix home screen stacking on top of login screen AKA remove backButton
      leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      actions: [
        IconButton(
          icon: Icon(Icons.email, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
