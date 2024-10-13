import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthSecondaryButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text, icons;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontSize;
  final Color? textColor, bgColor;
  const AuthSecondaryButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.width,
      this.height,
      required this.icons,
      this.borderRadius,
      this.fontSize,
      this.textColor,
      this.bgColor});

  @override
  State<AuthSecondaryButton> createState() => _AuthSecondaryButtonState();
}

class _AuthSecondaryButtonState extends State<AuthSecondaryButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        });
        widget.onTap();
      },
      child: ScaleTransition(
        scale: _tween.animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          ),
        ),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Container(
            height: widget.height ?? 55,
            width: widget.width ?? double.maxFinite,
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(widget.borderRadius!),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(width: 15.w),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SvgPicture.asset(
                    widget.icons,
                    width: 20,
                    height: 20,
                  ),
                ),
                const Spacer(),
                Center(
                  child: Text(
                    widget.text,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: widget.textColor,
                        fontSize: widget.fontSize,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: SvgPicture.asset(
                    widget.icons,
                    color: Colors.transparent,
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
