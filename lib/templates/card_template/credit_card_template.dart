import 'package:flutter/material.dart';
import 'package:etapa4/molecules/card/credit_card.dart';

/// * [CreditCardTemplate] is a template for creating a credit card.
class CreditCardTemplate extends StatelessWidget {

  /// * [cardNumber] is a string that contains the card number.
  final String cardNumber;

  /// * [expirationDate] is a string that contains the expiration date.
  final String expirationDate;

  /// * [cvv] is a string that contains the cvv.
  final String cvv;

  /// * [name] is a string that contains the name of the cardholder.
  final String name;

  /// * [colorText] is a color that contains the color of the text.
  final Color colorText;

  /// * [gradient] is a gradient that contains the gradient of the background color of card.
  final Gradient? gradient;

  const CreditCardTemplate({
    super.key,
    required this.cardNumber,
    required this.expirationDate,
    required this.cvv,
    required this.name,
    required this.colorText,
    this.gradient,
  });

  /// * Build a [CreditCard] with the given [cardNumber], [expirationDate], [cvv], [name], [colorText] and [colorCard].
  @override
  Widget build(BuildContext context) {
    return CreditCard(
      cardNumber: cardNumber,
      expirationDate: expirationDate,
      cvv: cvv,
      colorText: colorText,
      name: name,
      gradient: gradient,
    );
  }
}
