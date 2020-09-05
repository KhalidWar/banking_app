import 'package:banking/constants.dart';
import 'package:banking/dummy_data/accounts_list.dart';
import 'package:banking/widgets/account_details_card.dart';
import 'package:banking/widgets/pending_posted_widget.dart';
import 'package:banking/widgets/statement_search_widget.dart';
import 'package:banking/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();

  AccountScreen({
    this.accountType,
    this.acctNumber,
    this.balance,
    this.index,
  });
  final String accountType;
  final int acctNumber;
  final double balance;
  final int index;
}

class _AccountScreenState extends State<AccountScreen> {
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
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      floatingActionButton: Visibility(
        visible: _show,
        child: buildFloatingActionButton(),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.2,
            width: double.infinity,
            padding: EdgeInsets.only(
              left: size.width * 0.07,
              top: size.height * 0.001,
              bottom: size.height * 0.04,
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
            ),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                AccountDetailsCard(widget: widget),
                Positioned(
                  top: size.height / 5.7,
                  width: size.width * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SearchStatementWidget(
                          child:
                              SvgPicture.asset('assets/icons/receipt_long.svg'),
                          label: 'Statement',
                          onPress: () {}),
                      SearchStatementWidget(
                          child: Icon(Icons.search),
                          label: 'Search',
                          onPress: () {
                            print('ACCESSED!!!!');
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height / 30),
          Container(
            height: size.height * 0.66,
            child: ListView(
              controller: _scrollController,
              shrinkWrap: true,
              children: [
                PendingPostedWidget(
                  label: 'Balance',
                  showAllTransactions: false,
                ),
                Container(
                  width: size.width * 0.85,
                  height: size.height * 0.05,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //todo add balances widget
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                PendingPostedWidget(
                    label: 'Pending', showAllTransactions: false),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: pendingTransactionsList.length,
                    itemBuilder: (context, index) {
                      return TransactionWidget(
                        logo: pendingTransactionsList[index].logo,
                        merchant: pendingTransactionsList[index].merchant,
                        date: pendingTransactionsList[index].date,
                        price: pendingTransactionsList[index].price,
                        onPress: () {
                          print('ACCESSED!!!!!!!!!!');
                        },
                      );
                    }),
                SizedBox(height: 10),
                PendingPostedWidget(label: 'Posted', showAllTransactions: true),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: postedTransactionsList.length,
                  itemBuilder: (context, index) {
                    return TransactionWidget(
                      logo: postedTransactionsList[index].logo,
                      merchant: postedTransactionsList[index].merchant,
                      date: postedTransactionsList[index].date,
                      price: postedTransactionsList[index].price,
                      onPress: () {
                        print('ACCESSED!!!!!!!!!!');
                      },
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: kCashColor,
      child: Icon(
        Icons.attach_money,
        size: 40,
      ),
      onPressed: () {},
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text('${widget.accountType}'),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
