import 'package:animations/animations.dart';
import 'package:banking/constants.dart';
import 'package:banking/widgets/referral_code.dart';
import 'package:banking/widgets/settings_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Account Settings'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: size.height / 10,
                margin: EdgeInsets.only(top: size.height * 0.05),
                child: SvgPicture.asset('lib/dummy_data/icons/profile_pic.svg'),
              ),
              Text(
                'Khalid War',
                style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                '@KhalidWar',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          ReferralCode(),
          SettingsListTile(
            label: 'Personal',
            iconData: Icons.person,
            onPress: () {},
          ),
          SettingsListTile(
            label: 'Privacy & Security',
            iconData: Icons.security,
            onPress: () {},
          ),
          SettingsListTile(
            label: 'Notification',
            iconData: Icons.notifications_active,
            onPress: () {},
          ),
          SettingsListTile(
            label: 'Contact Support',
            iconData: Icons.support_agent,
            onPress: () {},
          ),
          FlatButton(
            minWidth: double.infinity,
            height: size.height * 0.06,
            color: kPrimaryColor,
            child: Text(
              'Sign out',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.white),
            ),
            onPressed: () {
              showModal(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Are you sure you want to sign out?',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      actions: [
                        FlatButton(
                          child: Text(
                            'Yes',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                        ),
                        FlatButton(
                          child: Text(
                            'No',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
