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

  const AnimatedBorderButton({
    Key key,
    @required this.title,
    @required this.onClick,
    this.iconData,
    @required this.defaultColor,
    @required this.hoverColor,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  _AnimatedBorderButtonState createState() => _AnimatedBorderButtonState();
}

// 21 30 33
class _AnimatedBorderButtonState extends State<AnimatedBorderButton> {
  bool isHover = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
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
              color: widget.defaultColor,
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
                        color:
                            isHover ? widget.hoverColor : widget.defaultColor,
                      ),
                    ),
                    Text(
                      widget.title,
                      style: GoogleFonts.lato(
                        color:
                            isHover ? widget.hoverColor : widget.defaultColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              : Text(
                  widget.title,
                  style: GoogleFonts.lato(
                    color: isHover ? widget.hoverColor : widget.defaultColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
        ),
      ),
    );
  }
}
