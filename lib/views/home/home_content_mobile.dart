import 'package:bloc/widgets/call_to_action/call_to_action.dart';
import 'package:flutter/material.dart';
import 'package:bloc/widgets/company_details/company_details.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        CompanyDetails(),
        SizedBox(
          height: 100,
        ),
        CallToAction("Test CTA")
      ],
    );
  }
}
