import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  final String text;
  final TextStyle defaultStyle;
  final TextStyle hoverStyle;
  final VoidCallback onClick;

  const AnimatedText({
    Key key,
    @required this.text,
    @required this.defaultStyle,
    @required this.hoverStyle, this.onClick,
  }) : super(key: key);

  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  TextStyle _style;

  @override
  void initState() {
    _style = widget.defaultStyle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: MouseRegion(
        onHover: (event) {
          setState(() {
            _style = widget.hoverStyle;
          });
        },
        onExit: (event) {
          setState(() {
            _style = widget.defaultStyle;
          });
        },
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 500),
          style: _style,
          child: Text(
            widget.text,
          ),
        ),
      ),
    );
  }
}
