/* Generated with ChatGPT : https://chat.openai.com/chat/6258744a-f9ff-4730-bf55-49251ae952d1 */
library gpt_draggable_fab;

import 'package:flutter/material.dart';

class DraggableFab extends StatefulWidget {
  final IconData iconData;
  final VoidCallback? onPressed;
  final String? tooltip;

  const DraggableFab(
      {Key? key, required this.iconData, this.onPressed, this.tooltip})
      : super(key: key);

  @override
  State<DraggableFab> createState() => _DraggableFabState();
}

class _DraggableFabState extends State<DraggableFab> {
  Offset position = const Offset(0, 0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      position = Offset(MediaQuery.of(context).size.width - 80,
          MediaQuery.of(context).size.height - 80);
    });
  }

  @override
  Widget build(BuildContext context) {
    final fab = FloatingActionButton(
      tooltip: widget.tooltip,
      onPressed: widget.onPressed,
      child: Icon(widget.iconData),
    );
    return Stack(
      children: [
        Positioned(
          left: position.dx,
          top: position.dy,
          child: Draggable(
            feedback: fab,
            childWhenDragging: const SizedBox.shrink(),
            onDraggableCanceled: (velocity, offset) {
              setState(() {
                position = offset;
              });
            },
            child: fab,
          ),
        ),
      ],
    );
  }
}
