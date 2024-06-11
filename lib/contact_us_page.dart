import 'package:flutter/material.dart';
import 'package:go_router_demo/default_wrapper.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultWrapper(
      title: 'Contact Us',
      child: ContactUsBody(),
    );
  }
}

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("ContactUs page loaded"),
      ),
    );
  }
}
