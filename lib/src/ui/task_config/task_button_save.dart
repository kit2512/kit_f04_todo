import 'package:flutter/material.dart';

import '../home_body/home_floating_button.dart';

class TasKButtonSave extends StatelessWidget {
  const TasKButtonSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 168),
      width: 500,
      child: FloatingActionButton(
        child: Text("Save"),
        onPressed: () {},
      ),
    );
  }
}
