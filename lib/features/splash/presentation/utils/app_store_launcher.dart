import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openAppStoreListing() async {
  final packageInfo = await PackageInfo.fromPlatform();
  final packageName = packageInfo.packageName;

  final Uri uri;
  if (!kIsWeb && Platform.isIOS) {
    uri = Uri.parse('https://apps.apple.com/app/$packageName');
  } else {
    uri = Uri.parse('market://details?id=$packageName');
  }

  final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
  if (launched) return;

  final fallback = Uri.parse(
    'https://play.google.com/store/apps/details?id=$packageName',
  );
  await launchUrl(fallback, mode: LaunchMode.externalApplication);
}
