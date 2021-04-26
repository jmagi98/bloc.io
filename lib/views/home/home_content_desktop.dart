import 'package:flutter/material.dart';
import 'package:bloc/widgets/call_to_action/call_to_action.dart';
import 'package:bloc/widgets/company_details/company_details.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          CompanyDetails(),
          SizedBox(
            height: 60,
          ),
          Center(
            child: CallToAction('Learn More'),
          ),
        ],
      ),
    );
  }
}
