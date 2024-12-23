import 'package:flutter/material.dart';
import 'package:etapa4/atoms/text/body_text.dart';
import 'package:etapa4/atoms/text/subtitle_text.dart';

/// * [CreditCard] is a type of card that shows the information of a credit card.
class CreditCard extends StatelessWidget {
  /// * [cardNumber] is the number of the credit card.
  final String cardNumber;

  /// * [expirationDate] is the expiration date of the credit card.
  final String expirationDate;

  /// * [cvv] is the cvv of the credit card.
  final String cvv;

  /// * [name] is the name of the person in the credit card.
  final String name;

  /// * [colorText] is the color of the text in the card.
  final Color colorText;

  /// * [gradient] is the gradient of the background color of card.
  final Gradient? gradient;

  const CreditCard({
    super.key,
    required this.cardNumber,
    required this.expirationDate,
    required this.cvv,
    required this.name,
    required this.colorText,
    this.gradient
  });

  /// * Format the [cardNumber] to show only the first 4 digits and  last 4 digits.
  String formatCardNumber(String cardNumber) {
    if (cardNumber.length > 4) {
      return '${cardNumber.substring(0, 4)} **** **** ${cardNumber.substring(cardNumber.length - 4)}';
    }
    return cardNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient ?? LinearGradient(
            colors: [
              Color(0xFF3366FF),
              Color(0xFF00CCFF),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flutterme Card',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Transform.rotate(
                    angle: 90 * 3.1415927 / 180,
                    child: Icon(
                      Icons.sim_card,
                      color: Colors.amber,
                      size: 40,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              SubtitleText(
                text: formatCardNumber(cardNumber),
                color: colorText,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BodyText(
                        text: 'Valid Thru',
                        color: colorText,
                      ),
                      BodyText(
                        text: expirationDate,
                        color: colorText,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      BodyText(
                        text: 'CVV',
                        color: colorText,
                      ),
                      BodyText(
                        text: cvv,
                        color: colorText,
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              BodyText(
                text: name,
                color: colorText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
