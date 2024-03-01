import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

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
              title: 'Terms And Condtion')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Welcome to Device Mart! By accessing and using our e-commerce app, you agree to comply with these Terms and Conditions, which govern your use of the services provided by Device Mart. Please read these terms carefully before using our app.When you register for an account on Device Mart, you agree to provide accurate and complete information and to keep your account credentials secure. You are responsible for all activities that occur under your account. Our app is intended for personal, non-commercial use only. You agree not to use Device Mart for any unlawful or prohibited purpose or in a manner that could damage, disable, overburden, or impair our servers or networks.Device Mart provides listings for laptops and related products available for purchase. While we strive to ensure the accuracy of product information, we cannot guarantee the availability or suitability of any particular product. Product prices and availability are subject to change without notice.By placing an order through Device Mart, you agree to pay the specified price for the selected products, including any applicable taxes and shipping fees. Payment processing is handled securely through trusted third-party payment processors. We reserve the right to refuse or cancel any order for any reason, including but not limited to product availability, errors in pricing or product descriptions, or suspicion of fraudulent activity.The content, design, and layout of Device Mart are protected by copyright, trademark, and other intellectual property laws. You may not reproduce, distribute, modify, or create derivative works based on the content of the app without our prior written consent.Device Mart is provided on an as is and as available basis, without warranties of any kind, either express or implied. We disclaim all warranties, including but not limited to merchantability, fitness for a particular purpose, and non-infringement. In no event shall Device Mart or its affiliates be liable for any indirect, incidental, special, or consequential damages arising out of or in connection with your use of the app.You agree to indemnify and hold harmless Device Mart, its affiliates, and their respective officers, directors, employees, and agents from and against any claims, liabilities, damages, losses, or expenses arising out of or in connection with your use of the app or any violation of these Terms and Conditions.These Terms and Conditions shall be governed by and construed in accordance with the laws of [Your Jurisdiction], without regard to its conflict of law provisions. Any dispute arising out of or relating to these terms shall be resolved exclusively in the courts of the Union Territory of Lakshadweep.We reserve the right to update or modify these Terms and Conditions at any time without prior notice. By continuing to use Device Mart after any such changes, you agree to be bound by the revised terms. It is your responsibility to review these terms periodically for changes.If you have any questions or concerns about these Terms and Conditions, please contact us at +91999999999.Thank you for using Device Mart!"),
            )
          ],
        ),
      ),
    );
  }
}
