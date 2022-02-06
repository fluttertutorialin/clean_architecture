/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/assets/assets.dart';
import '../../controller/controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('${'version'} 1.0.0+1',
                textAlign: TextAlign.center,
                style: context.textTheme.headline5!
                    .merge(const TextStyle(fontSize: 15)))),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            leading: IconButton(
                icon: Icon(arrowLefAndroidIcon, color: Get.theme.hintColor),
                onPressed: () => Get.back()),
            elevation: 0),
        body: SingleChildScrollView(
            child: Column(children: [
          Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
            CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.1),
                radius: 35,
                backgroundImage: const AssetImage(profileAsset)),
            const SizedBox(height: 10.0),
          ])),
          ListTile(
              leading: const Icon(userCircleIcon),
              title: Text('Name',
                  style: context.textTheme.headline6!
                      .merge(const TextStyle(fontSize: 12))),
              subtitle: Text(controller.userName!,
                  style: context.textTheme.bodyText1!
                      .merge(const TextStyle(fontSize: 14)))),
          const Divider(),
          /*ListTile(
              leading: const Icon(phoneIcon),
              title: Text('Mobile',
                  style: context.textTheme.headline6!
                      .merge(const TextStyle(fontSize: 12))),
              subtitle: Text(controller.userName!,
                  style: context.textTheme.bodyText1!
                      .merge(const TextStyle(fontSize: 14)))),
          const Divider(),*/
          ListTile(
              onTap: () {},
              leading: const Icon(themeIcon),
              title: Text('Change theme',
                  style: context.textTheme.headline6!
                      .merge(const TextStyle(fontSize: 12))),
              subtitle: Text('Chnage theme light, dart and default',
                  style: context.textTheme.bodyText1!
                      .merge(const TextStyle(fontSize: 14)))),
          const Divider(),
          ListTile(
              onTap: () {},
              leading: const Icon(languageIcon),
              title: Text('Change language',
                  style: context.textTheme.headline6!
                      .merge(const TextStyle(fontSize: 12))),
              subtitle: Text('Select any one language english, hindi',
                  style: context.textTheme.bodyText1!
                      .merge(const TextStyle(fontSize: 14)))),
          const Divider(),
          ListTile(
              onTap: () {},
              leading: const Icon(privacyPolicyIcon),
              subtitle: Text('Sharing and visibility',
                  style: context.textTheme.bodyText1!
                      .merge(const TextStyle(fontSize: 14))),
              title: Text('Privacy policy',
                  style: context.textTheme.headline6!
                      .merge(const TextStyle(fontSize: 12)))),
          const Divider(),
          ListTile(
              onTap: () {
                controller.logout();
              },
              leading: const Icon(logoutIcon),
              title: Text('Logout',
                  style: context.textTheme.headline6!
                      .merge(const TextStyle(fontSize: 12))),
              subtitle: Text('You are login in ${controller.loginInTime!}',
                  style: context.textTheme.bodyText1!
                      .merge(const TextStyle(fontSize: 14))))
        ])));
  }
}
