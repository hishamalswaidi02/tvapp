import 'package:flutter/material.dart';

import 'package:tvapp/services/dpadoption.dart';

class TopNavButton extends StatelessWidget {
  const TopNavButton({
    super.key,
    required this.label,
    required this.index,
    required this.focusedIndex,
    required this.updateFocus,
    required this.isTV,
    required this.onSelect,
  });

  final String label;
  final int index;
  final int focusedIndex;
  final Function(int) updateFocus;
  final bool isTV;
  final Function onSelect;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: DpadOption(
          onSelect: () => onSelect(
              context: context,
              isTV: isTV),
          onFocus: (isFocused) {
            if (isFocused) {
              updateFocus(index);
            }
          },
          child: GestureDetector(
            onTap: () => onSelect(
                context: context,
                isTV: true),
            child: Card(
              color: index == focusedIndex ? Colors.indigo[900] : null,
              elevation: 3.0,
              shadowColor: Colors.indigo[900],
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, color: index == focusedIndex ? Colors.white : null),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
