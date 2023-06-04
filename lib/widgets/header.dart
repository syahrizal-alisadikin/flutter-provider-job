import 'package:flutter/material.dart';
import 'package:provider_jobs/widgets/theme.dart';

class HeaderPage extends StatelessWidget {
  final String title;
  final String subtitle;
  const HeaderPage({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleTextStyle,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            subtitle,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
