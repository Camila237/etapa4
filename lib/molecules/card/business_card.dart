import 'package:flutter/material.dart';
import 'package:etapa4/atoms/text/body_text.dart';
import 'package:etapa4/atoms/text/subtitle_text.dart';
import 'package:etapa4/atoms/text/title_text.dart';

/// * [BusinessCard] is a type of card that shows the information of a business about a person.
class BusinessCard extends StatelessWidget {
  /// * [name] is the name of the person.
  final String name;

  /// * [position] is the position of the person in the business.
  final String position;

  /// * [phoneNumber] is the phone number of the person.
  final int phoneNumber;

  /// * [email] is the email of the person.
  final String email;

  /// * [colorText] is the color of the text in the card.
  final Color colorText;

  /// * [colorCard] is the color of the card.
  final Color colorCard;

  const BusinessCard({
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
    return Card(
      color: colorCard,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.business,
                color: Colors.white,
                size: 80,
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Spacer(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
                TitleText(
                  text: name,
                  color: colorText,
                ),
                SubtitleText(
                  text: position,
                  color: colorText,
                ),
                SizedBox(height: 15),
                BodyText(
                  text: phoneNumber.toString(),
                  color: colorText,
                ),
                SizedBox(height: 8),
                BodyText(
                  text: email,
                  color: colorText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
