import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/constants/general_constants.dart';

class Language extends StatefulWidget {
  //route name
  static const String route = 'language';

  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  //current language selected
  int _currentSelectedLang = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.center,
            child: const Text('Select a language'),
          ),
          ..._languageCards(),
        ],
      ),
    );
  }

  List<Widget> _languageCards() {
    List<Widget> cards = [];
    List<Map<String, String>> languageData = [
      {'language': 'English', 'icon': US_FLAG_ICON},
      {'language': 'French', 'icon': FRENCH_FLAG_ICON},
      {'language': 'Germman', 'icon': GERMMANY_FLAG_ICON},
      {'language': 'Japanese', 'icon': JAPENESE_FLAG_ICON},
      {'language': 'Turkish', 'icon': TURKEY_FLAG_ICON},
    ];
    languageData.asMap().forEach((index, lang) {
      cards.add(InkWell(
        onTap: () => setState(() {
          _currentSelectedLang = index;
        }),
        child: Card(
          shape: _currentSelectedLang == index ? Border.all() : null,
          child: ListTile(
            leading: Image.asset(
              lang['icon']!,
              width: 50,
            ),
            title: Text(lang['language']!),
          ),
        ),
      ));
    });
    return cards;
  }
}
