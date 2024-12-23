import 'package:flutter/material.dart';
import 'package:etapa4/molecules/card/business_card.dart';

/// * [BusinessCardTemplate] is a class that use like a template to create a business card
class BusinessCardTemplate extends StatelessWidget {
  /// * [name] is a string that contains the name of the person
  final String name;

  /// * [position] is a string that contains the position of the person
  final String position;

  /// * [phoneNumber] is a integer that contains the phone number of the person
  final int phoneNumber;

  /// * [email] is a string that contains the email of the person
  final String email;

  /// * [colorText] is a color that contains the color of the text
  final Color colorText;

  /// * [colorCard] is a color that contains the color of the card
  final Color colorCard;

  const BusinessCardTemplate({
    super.key,
    required this.name,
    required this.position,
    required this.phoneNumber,
    required this.email,
    required this.colorText,
    required this.colorCard,
  });

  @override
  Widget build(BuildContext context) {
    return BusinessCard(
      name: name,
      phoneNumber: phoneNumber,
      email: email,
      position: position,
      colorCard: colorCard,
      colorText: colorText,
    );
  }
}
