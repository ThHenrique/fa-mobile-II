import 'package:flutter/material.dart';

class LabelCheckbox extends StatefulWidget {
  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  const LabelCheckbox({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CheckboxState();
}

class _CheckboxState extends State<LabelCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Padding(
        padding: widget.padding,
        child: Row(
          children: <Widget>[
            Checkbox(
              value: widget.value,
              onChanged: (bool? newValue) {
                widget.onChanged(newValue!);
              },
            ),
            Expanded(child: Text(widget.label)),
          ],
        ),
      ),
    );
  }
}
