import 'package:bookly/core/utils/functions/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnackBar(
        context,
        message: 'Can not launch $url',
        backgroundColor: const Color(0xFFBB2E2E),
      );
    }
  }
}
