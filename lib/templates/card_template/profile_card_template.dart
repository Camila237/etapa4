import 'package:flutter/material.dart';
import 'package:etapa4/molecules/card/profile_card.dart';

/// * [ProfileCardTemplate] is a class that use like a template to create a profile card
class ProfileCardTemplate extends StatelessWidget {
  /// * [colorText] is a color that contains the color of the text
  final Color colorText;

  /// * [colorCard] is a color that contains the color of the card
  final Color colorCard;

  /// * [name] is a string that contains the name of the person
  final String name;

  /// * [email] is a string that contains the email of the person
  final String email;

  /// * [description] is a string that contains the description of the person
  final String description;

  /// * [imageUrl] is a string that contains the url of the image
  final String? imageUrl;

  const ProfileCardTemplate({
    super.key,
    required this.colorText,
    required this.colorCard,
    required this.name,
    required this.email,
    required this.description,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ProfileCard(
      colorText: colorText,
      colorCard: colorCard,
      name: name,
      email: email,
      description: description,
      imageUrl: imageUrl,
    );
  }
}
