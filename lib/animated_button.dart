import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedBorderButton extends StatefulWidget {
  final String title;
  final VoidCallback onClick;
  final IconData iconData;
  final Color defaultColor;
  final Color hoverColor;
  final double width;
  final double height;
  final Color disableColor;
  const AnimatedBorderButton({
    Key key,
    @required this.title,
    @required this.onClick,
    this.iconData,
    @required this.defaultColor,
    @required this.hoverColor,
    this.width,
    this.height,
    this.disableColor,
  }) : super(key: key);

  @override
  _AnimatedBorderButtonState createState() => _AnimatedBorderButtonState();
}

// 21 30 33
class _AnimatedBorderButtonState extends State<AnimatedBorderButton> {
  bool isHover = false;

  Color getContentColor() {
    if (widget.onClick == null) return widget.disableColor;
    return isHover ? widget.hoverColor : widget.defaultColor;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print(MediaQuery.of(context).size.width);
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        if (widget.onClick == null) return;
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        if (widget.onClick == null) return;
        setState(() {
          isHover = false;
        });
      },
      child: TextButton(
        onPressed: widget.onClick,
        child: AnimatedContainer(
          width: widget.width != null ? widget.width : null,
          height: widget.height != null ? widget.height : null,
          duration: Duration(milliseconds: 400),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          decoration: BoxDecoration(
            color: isHover ? widget.defaultColor : Colors.transparent,
            border: Border.all(
              color: widget.onClick != null
                  ? widget.defaultColor
                  : widget.disableColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: widget.iconData != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        widget.iconData,
                        color: getContentColor(),
                      ),
                    ),
                    Text(
                      widget.title,
                      style: GoogleFonts.lato(
                        color: getContentColor(),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              : AutoSizeText(
                  widget.title,
                  maxFontSize: 16,
                  style: GoogleFonts.lato(
                    color: getContentColor(),
                    fontWeight: FontWeight.w700,
                  ),
                ),
        ),
      ),
    );
  }
}
