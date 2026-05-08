import 'package:flutter/material.dart';

/// Model for monthly consumption data
class MonthlyConsumption {
  final String month;
  final double height; // 0-1 ratio for bar height
  final bool isHighlighted; // Current month

  MonthlyConsumption({
    required this.month,
    required this.height,
    this.isHighlighted = false,
    required int electricity,
    required int water,
  });

  factory MonthlyConsumption.fromJson(Map<String, dynamic> json) {
    return MonthlyConsumption(
      month: json['month'] as String,
      height: json['height'] as double,
      isHighlighted: json['isHighlighted'] as bool? ?? false,
      electricity: json['electricity'] as int,
      water: json['water'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
    'month': month,
    'height': height,
    'isHighlighted': isHighlighted,
  };
}

/// Model for usage summary (electricity, water, gas, etc.)
class UsageSummaryItem {
  final String label;
  final String value;
  final String unit;
  final String iconUrl;

  UsageSummaryItem({
    required this.label,
    required this.value,
    required this.unit,
    required this.iconUrl,
  });

  factory UsageSummaryItem.fromJson(Map<String, dynamic> json) {
    return UsageSummaryItem(
      label: json['label'] as String,
      value: json['value'] as String,
      unit: json['unit'] as String,
      iconUrl: json['iconUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'label': label,
    'value': value,
    'unit': unit,
    'iconUrl': iconUrl,
  };
}

/// Model for current bill information
class BillModel {
  final String amount;
  final String currency;
  final String billingPeriod;
  final String dueDate;
  final int daysUntilDue;

  BillModel({
    required this.amount,
    required this.currency,
    required this.billingPeriod,
    required this.dueDate,
    required this.daysUntilDue,
  });

  factory BillModel.fromJson(Map<String, dynamic> json) {
    return BillModel(
      amount: json['amount'] as String,
      currency: json['currency'] as String? ?? 'EGP',
      billingPeriod: json['billingPeriod'] as String,
      dueDate: json['dueDate'] as String,
      daysUntilDue: json['daysUntilDue'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
    'amount': amount,
    'currency': currency,
    'billingPeriod': billingPeriod,
    'dueDate': dueDate,
    'daysUntilDue': daysUntilDue,
  };
}

/// Model for quick action items
class QuickActionModel {
  final String title;
  final String subtitle;
  final String iconUrl;
  final String backgroundColor; // hex color
  final VoidCallback onTap;
  final String? badge; // Optional badge text

  QuickActionModel({
    required this.title,
    required this.subtitle,
    required this.iconUrl,
    required this.backgroundColor,
    required this.onTap,
    this.badge,
  });
}

// Home screen data model
class HomeScreenData {
  final String userName;
  final String userAvatarUrl;
  final UsageSummaryItem electricity;
  final UsageSummaryItem water;
  final BillModel currentBill;
  final List<MonthlyConsumption> consumptionHistory;
  final String percentageChange; // e.g., "-12% vs last year"

  HomeScreenData({
    required this.userName,
    required this.userAvatarUrl,
    required this.electricity,
    required this.water,
    required this.currentBill,
    required this.consumptionHistory,
    this.percentageChange = '-12% vs last year',
  });
}
