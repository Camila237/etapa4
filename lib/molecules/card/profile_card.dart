import 'package:flutter/material.dart';
import 'package:etapa4/atoms/text/title_text.dart';
import 'package:etapa4/atoms/text/body_text.dart';

/// * [ProfileCard] is a type of card that shows the information of a person.
class ProfileCard extends StatelessWidget {
  /// * [colorText] is the color of the text in the card.
  final Color colorText;

  /// * [colorCard] is the color of the card.
  final Color colorCard;

  /// * [name] is the name of the person.
  final String name;

  /// * [email] is the email of the person.
  final String email;

  /// * [description] is the description of the person.
  final String description;

  /// * [imageUrl] is the url of the image of the person.
  final String? imageUrl;

  const ProfileCard({
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
    return Card(
      color: colorCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: imageUrl != null
                  ? Image.network(
                      imageUrl!,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/profile-icon.png',
                      fit: BoxFit.contain,
                    ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleText(
                    text: name,
                    color: colorText,
                  ),
                  SizedBox(height: 5),
                  BodyText(
                    text: description,
                    color: colorText,
                  ),
                  SizedBox(height: 20,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Contacto: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorText,
                          ),
                        ),
                        TextSpan(
                          text: email,
                          style: TextStyle(
                            color: colorText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
