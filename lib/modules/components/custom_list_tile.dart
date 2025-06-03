import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String label;
  final Widget trailingWidget;
  const CustomListTile({
    required this.label,
    required this.trailingWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      leading: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: SizedBox(
        width: 200,
        child: trailingWidget,
      ),
    );
  }
}
