import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarActionButton extends StatefulWidget {
  final String title;
  final VoidCallback onClick;
  final Color color;

  const AppbarActionButton({Key key, this.title, this.onClick, this.color})
      : super(key: key);

  @override
  _AppbarActionButtonState createState() => _AppbarActionButtonState();
}

class _AppbarActionButtonState extends State<AppbarActionButton> {
  Color barColor;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    barColor = Colors.transparent;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          barColor = widget.color;
        });
      },
      onExit: (event) {
        setState(() {
          barColor = Colors.transparent;
        });
      },
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: widget.onClick,
              child: Container(
                width: 120,
                child: Center(
                  child: Text(
                    widget.title,
                    style: GoogleFonts.getFont(
                      'Londrina Solid',
                      fontSize: 20,
                      color: widget.color,
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedContainer(
            width: 120,
            height: 4,
            color: barColor,
            duration: Duration(
              milliseconds: 400,
            ),
            curve: Curves.easeIn,
          )
        ],
      ),
    );
  }
}
