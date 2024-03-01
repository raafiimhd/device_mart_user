import 'package:device/application/presentation/screens/settings/widgets/logout_snackbar.dart';
import 'package:device/application/presentation/screens/settings/widgets/profile/address/address_screen.dart';
import 'package:device/application/presentation/screens/settings/widgets/user_wallet/user_wallet.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:share_plus/share_plus.dart';

import 'widgets/profile/get_profile_details.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    onShare(context) async {
      final box = context.findRenderObject() as RenderBox?;
      await Share.share(
          'https://play.google.com/store/apps/details?id=com.example.deviceMart',
          subject: '',
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    }

    return Scaffold(
      backgroundColor: kWhite,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppBar(
            title: 'Settings',
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileDetailsWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: kBlack,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.my_location),
              title: const Text(
                'User Address',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddAddressScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.wallet),
              title: const Text(
                'Wallet',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ScreenWallet())),
            ),
            ListTile(
              leading: const Icon(Icons.policy_outlined),
              title: const Text(
                'Privacy And Policies',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () =>
                  Navigator.of(context).pushNamed('/settingsWidgetOne'),
            ),
            InkWell(
              child: ListTile(
                leading: const Icon(Icons.note),
                title: const Text(
                  'Terms And Conditions',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () =>
                    Navigator.of(context).pushNamed('/settingsWidgetTwo'),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.share_outlined,
                color: kBlack,
                size: 30,
              ),
              title: const Text(
                'Share',
                style: TextStyle(color: kBlack, fontSize: 20),
              ),
              onTap: () {
                onShare(context);
              },
            ),
            InkWell(
              child: ListTile(
                  leading: const Icon(
                    Iconsax.logout,
                    color: kRed,
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 20, color: kRed),
                  ),
                  trailing:
                      const Icon(Icons.arrow_forward_ios_outlined, color: kRed),
                  onTap: () => logoutDialoge(context)),
            ),
            SizedBox(height: size.width * 0.8),
            const Text(
              'Version 1.0',
              style: TextStyle(color: Color.fromARGB(255, 162, 159, 159)),
            )
          ],
        ),
      ),
    );
  }
}
