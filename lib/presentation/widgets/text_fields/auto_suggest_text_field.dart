import 'package:flutter/material.dart';

class AutoSuggestTextField extends StatefulWidget {
  const AutoSuggestTextField({super.key});

  @override
  AutoSuggestTextFieldState createState() => AutoSuggestTextFieldState();
}

class AutoSuggestTextFieldState extends State<AutoSuggestTextField> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<String> _options = [
    'Table Tennis Ball',
    'Table Tennis Racquet',
    'Pickleball bat',
    'Pickleball ball',
    'Table Tennis table'
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        return _options.where((String option) {
          return option
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String? selectedOption) {
        setState(() {
          _textEditingController.text = selectedOption ?? '';
        });
      },
      fieldViewBuilder: (BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) {
        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          decoration: const InputDecoration(
              labelText: 'Type something',
              border: OutlineInputBorder(),
              isDense: true),
          onChanged: (String value) {
            onFieldSubmitted();
          },
        );
      },
      optionsViewBuilder: (BuildContext context,
          AutocompleteOnSelected<String> onSelected, Iterable<String> options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4.0,
            child: SizedBox(
              height: 200,
              width: 255,
              child: ListView(
                padding: EdgeInsets.zero,
                children: options.map((String option) {
                  return ListTile(
                    title: Text(option),
                    onTap: () {
                      onSelected(option);
                    },
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
