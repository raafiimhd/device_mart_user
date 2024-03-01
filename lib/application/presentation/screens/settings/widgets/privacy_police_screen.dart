import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';

class PrivacyAndPolicyScreen extends StatelessWidget {
  const PrivacyAndPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back)),
              title: 'Privacy And Policy')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Welcome to Device Mart! At Device Mart, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy explains how we collect, use, and safeguard the information you provide when using our e-commerce app.When you use Device Mart, we may collect various types of information to enhance your shopping experience and provide you with personalized services. This may include personal information such as your name, email address, shipping address, and payment details, which are necessary for processing orders and delivering products to you. We may also collect device information, such as the type of device you use, operating system, and unique device identifiers, to improve our app's functionality and troubleshoot technical issues. Additionally, we may gather information about your browsing activity within the app, including the pages you visit, products you view, and interactions you have with the app, to tailor our services to your preferences and provide relevant recommendations.Rest assured that we take the security of your information seriously. We employ industry-standard security measures, including encryption and secure servers, to protect your data from unauthorized access, disclosure, alteration, or destruction. Your personal information is stored securely and is accessible only to authorized personnel who are required to keep it confidential.Device Mart uses cookies and similar tracking technologies to enhance your experience on our app. These technologies help us remember your preferences and login information, analyze app usage and trends, and provide personalized content and advertisements. You can manage your cookie preferences through your device or browser settings, although disabling cookies may affect certain features and functionality of the app.As a user of Device Mart, you have certain rights regarding your personal information. You may access and update your information, request deletion of your data, and opt-out of marketing communications at any time. If you have any questions or concerns about our Privacy Policy or how your information is handled, please contact us at +91 999999999. We value your privacy and are committed to addressing any inquiries or requests promptly and transparently.Please note that by using Device Mart, you agree to the terms outlined in this Privacy Policy. We may update this policy periodically to reflect changes in our practices or legal requirements. Any revisions will be posted on this page, and we will notify you via email or app notification if significant changes are made. Thank you for choosing Device Mart for your e-commerce needs."),
            )
          ],
        ),
      ),
    );
  }
}
