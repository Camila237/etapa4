import 'package:etapa4/templates/card_template/credit_card_template.dart';
import 'package:flutter/material.dart';

/// * CreditCardList is a StatelessWidget that returns a GridView.builder with a
/// * fixed cross axis count and child aspect ratio. It receives a list of cards
class CreditCardList extends StatelessWidget {

  /// * [cards] is a list of maps that contains the information of all credit cards that you want to show it
  final List<Map<String, dynamic>> cards;

  const CreditCardList({
    super.key,
    required this.cards,
  });

  /// * _validateCrossAxisCount is a method that returns the number of columns validated by the width of the screen
  int _validateCrossAxisCount(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 620) {
      return 1;
    } else {
      return 2;
    }
  }

  /// * _validateChildAspectRadio is a method that returns the aspect ratio of the children validated by the width of the screen
  double _validateChildAspectRadio(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    switch (width) {
      case < 410:
        return 1.3;
      case < 496:
        return 1.6;
      case < 600:
        return 2;
      case < 710:
        return 1.3;
      case < 930:
        return 1.5;
      case < 1130:
        return 2;
      default:
        return 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _validateCrossAxisCount(context),
        childAspectRatio: _validateChildAspectRadio(context),
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: cards.length,
      itemBuilder: (context, index) {
        final card = cards[index];
        return CreditCardTemplate(
          colorText: card['colorText'] ?? Colors.black,
          cardNumber: card['cardNumber'] ?? '',
          cvv: card['cvv'] ?? '',
          name: card['name'] ?? '',
          expirationDate: card['expirationDate'] ?? '',
          gradient: card['gradient'],
        );
      },
    );
  }
}
