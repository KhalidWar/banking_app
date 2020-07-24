import 'package:banking/constants.dart';
import 'package:banking/widgets/profile_icon_button.dart';
import 'package:flutter/material.dart';

class TestAccountScreen extends StatefulWidget {
  TestAccountScreen({
    this.accountType,
    this.acctNumber,
    this.balance,
    this.index,
  });

  final String accountType;
  final int acctNumber;
  final double balance;
  final int index;

  @override
  _TestAccountScreenState createState() => _TestAccountScreenState();
}

class _TestAccountScreenState extends State<TestAccountScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('${widget.accountType}'),
            centerTitle: true,
            elevation: 3,
            backgroundColor: kStackBackgroundColor,
            actions: [ProfileIconButton()],
            expandedHeight: size.height * 0.3,
            floating: true,
//            collapsedHeight: size.height * 0.1,
          ),
        ],
      ),
    );
  }
}
