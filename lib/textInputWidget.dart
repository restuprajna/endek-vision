import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  // const TextInputWidget({super.key});

  final Function(String) callback;

  const TextInputWidget(this.callback, {super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.callback(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.message),
          labelText: "Type a Message",
          suffixIcon: IconButton(
            onPressed: click,
            icon: const Icon(Icons.send),
            hoverColor: Colors.yellow,
            splashColor: Colors.red,
            tooltip: "Post message",
          )),
    );
  }
}
