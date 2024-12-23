import 'package:flutter/material.dart';
import 'package:etapa4/atoms/icon/large_icon.dart';
import 'package:etapa4/atoms/icon/medium_icon.dart';
import 'package:etapa4/atoms/icon/small_icon.dart';
import 'package:etapa4/atoms/text/body_text.dart';
import 'package:etapa4/atoms/text/subtitle_text.dart';
import 'package:etapa4/atoms/text/title_text.dart';
import 'package:etapa4/organisms/card_list/business_card_list.dart';
import 'package:etapa4/organisms/card_list/credit_card_list.dart';
import 'package:etapa4/organisms/card_list/profile_card_list.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  /// * [_selectedIndex] is a integer that use to know the index of the selected item.
  int _selectedIndex = 0;

  /// * [profileCards] is a list that contains the information of  all profile cards that want to show it.
  final profileCards = [
    {
      'name': 'Juan Pérez',
      'email': 'juan.perez@example.com',
      'description': 'Desarrollador de software con pasión por la tecnología.',
      'colorCard': Colors.lightBlue[100],
      'colorText': Colors.black,
    },
    {
      'name': 'Ana Gómez',
      'email': 'ana.gomez@example.com',
      'description': 'Diseñadora gráfica y amante del arte.',
      'imageUrl': 'https://media.istockphoto.com/id/1386479313/es/foto/feliz-mujer-de-negocios-afroamericana-millennial-posando-aislada-en-blanco.jpg?s=612x612&w=0&k=20&c=JP0NBxlxG2-bdpTRPlTXBbX13zkNj0mR5g1KoOdbtO4=',
      'colorCard': Colors.purple[100],
      'colorText': Colors.purple[900],
    },
  ];

  /// * [businessCards] is a list that contains the information of  all business cards that want to show it.
  final businessCards = [
    {
      'name': 'Juan Pérez',
      'position': 'Desarrollador',
      'phoneNumber': 123456789,
      'email': 'juan@perez.com',
      'colorCard': Colors.blueAccent,
      'colorText': Colors.white,
    },
    {
      'name': 'Ana Gómez',
      'position': 'Diseñadora',
      'phoneNumber': 254321698,
      'email': 'ana@gomez.co',
      'colorCard': Colors.pinkAccent,
      'colorText': Colors.white,
    },
  ];

  /// * [creditCards] is a list that contains the information of  all credit cards that want to show it.
  final creditCards = [
    {
      'cardNumber': '1234 5678 9012 3456',
      'name': 'Juan Pérez',
      'expirationDate': '12/25',
      'cvv': '123',
      'gradient': LinearGradient(
        colors: [
          Color(0xFFff33ac),
          Color(0xFFf7b9de),
        ],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      ),
    },
    {
      'cardNumber': '9876 5432 1098 7654',
      'name': 'Ana Gómez',
      'expirationDate': '11/24',
      'cvv': '456',
      'colorText': Colors.white,
    },
  ];

  /// * [_pages] is a list that contains the information of all pages that want to show it.
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    /// * [_pages]  initialize the list of pages that want to show it.
    _pages = [
      Column(
        children: [
          TitleText(
            text: 'PROFILE CARD',
            color: Colors.purple,
          ),
          ProfileCardList(
            cards: profileCards,
          ),
          SizedBox(height: 30),
          TitleText(
            text: 'BUSINESS CARD',
            color: Colors.purple,
          ),
          BusinessCardList(
            cards: businessCards,
          ),
          SizedBox(height: 30),
          TitleText(
            text: 'CREDIT CARD',
            color: Colors.purple,
          ),
          CreditCardList(
            cards: creditCards,
          ),
        ],
      ),
      Center(
        child: Column(
          children: [
            TitleText(text: 'Este es un Title Text', color: Colors.purple,),
            SizedBox(height: 10),
            Divider(height: 2,),
            SizedBox(height: 10),
            SubtitleText(text: 'Este es el Subtitle Text', color: Colors.amber,),
            SizedBox(height: 10),
            Divider(height: 2,),
            SizedBox(height: 10),
            BodyText(text: 'Este es el Body Text', color: Colors.blueAccent,),
          ],
        ),
      ),
      Center(
        child: Column(
          children: [
            LargeIcon(icon: Icons.ac_unit_rounded, color: Colors.lightBlueAccent,),
            SizedBox(height: 10),
            Divider(height: 2,),
            SizedBox(height: 10),
            MediumIcon(icon: Icons.star, color: Colors.amber,),
            SizedBox(height: 10),
            Divider(height: 2,),
            SizedBox(height: 10),
            SmallIcon(icon: Icons.home, color: Colors.green,),
          ],
        ),
      ),
    ];
  }

  /// * [_onItemTapped] is a method that change the index of the selected item.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// * [build] is a method that returns a widget with a Scaffold that contains a BottomNavigationBar and a SingleChildScrollView.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: _pages[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Text',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_emoticon),
            label: 'Icons',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
      ),
    );
  }
}
