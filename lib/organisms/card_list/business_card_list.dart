import 'package:flutter/material.dart';
import 'package:etapa4/templates/card_template/business_card_template.dart';

/// * [BusinessCardList] is a class that use to create grid view of business card
class BusinessCardList extends StatelessWidget {
  /// * [cards] is a list of maps that contains the information of the business card
  final List<Map<String, dynamic>> cards;

  const BusinessCardList({
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
      case < 620:
        return 1.5;
      case < 730:
        return 1;
      case < 998:
        return 1.3;
      case < 1150:
        return 1.8;
      case < 1370:
        return 2.1;
      case < 1500:
        return 2.5;
      default:
        return 2.8;
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
        return BusinessCardTemplate(
          name: card['name'] ?? '',
          position: card['position'] ?? '',
          phoneNumber: card['phoneNumber'] ?? 0,
          email: card['email'] ?? '',
          colorText: card['colorText'] ?? Colors.black54,
          colorCard: card['colorCard'] ?? Colors.grey[200],
        );
      },
    );
  }
}
