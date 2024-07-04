import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension CustomSizedBoxExt on num {
  SizedBox get x => SizedBox(width: toDouble());

  SizedBox get y => SizedBox(height: toDouble());
}

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    } else if (endsWith('.svg')) {
      return ImageType.svg;
    } else if (startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, network, file, unknown }

extension date on DateTime {
  ///Example:
  ///Convert 2023-5-9 21:12:23:000Z to 9,May 2023

  String get toPkDate {
    int day = this.day;
    var monthNames = [
      " ",
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];
    return "${day} ${monthNames[this.month]}, ${this.year}";
  }

  String timeAgo({bool numericDates = true}) {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inDays >= 365) {
      final years = (difference.inDays / 365).floor();
      return '$years year${years > 1 ? 's' : ''} ago';
    } else if (difference.inDays >= 30) {
      final months = (difference.inDays / 30).floor();
      return '$months month${months > 1 ? 's' : ''} ago';
    } else if (difference.inDays >= 1) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
    } else {
      return 'Just now';
    }
  }

  String get humanReadableDate {
    //print("object");
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String get weekName {
    return DateFormat('EEEE').format(this);
  }

  DateTime get nowTypeFormatData {
    DateFormat outputFormat = DateFormat("yyyy-MM-dd HH:mm:ss");

    String formattedDate = outputFormat.format(this);

    return DateTime.parse(formattedDate);
  }
}

extension PaddingExtension on Widget {
  symmetricPadding({double? horizontal, double? vertical}) => Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontal ?? 0, vertical: vertical ?? 0),
      child: this);
  allPadding({required double value}) =>
      Padding(padding: EdgeInsets.all(value), child: this);
  onlyPadding({double? t, double? b, double? l, double? r}) => Padding(
      padding: EdgeInsets.only(
          top: t ?? 0, bottom: b ?? 0, left: l ?? 0, right: r ?? 0),
      child: this);
  center() => Center(child: this);
}

extension GestureExtension on Widget {
  Widget onTapped({required void Function() onTap}) => GestureDetector(
    onTap: onTap,
    child: this,
  );
}
