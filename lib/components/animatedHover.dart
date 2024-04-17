import 'package:flutter/material.dart';



class AnimatedHover extends StatefulWidget {
  const AnimatedHover(
      {super.key,
        required this.child,
        this.size = const Size(440, 440),
        this.hoverColor = const Color(0xFFFBE851),
        this.bgColor = const Color(0xFFE9EFF3),
        this.offset = const Offset(8, -8),
        this.curve = Curves.easeOutBack,
        this.duration = const Duration(milliseconds: 400),
        this.border = const Border()});

  final Widget child;
  final Size size;
  final Color hoverColor, bgColor;
  final Offset offset;
  final Curve curve;
  final Duration duration;
  final Border border;

  @override
  State<AnimatedHover> createState() => _AnimatedHoverState();
}

class _AnimatedHoverState extends State<AnimatedHover> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: widget.size.height,
          width: widget.size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        AnimatedPositioned(
          duration: widget.duration,
          curve: widget.curve,
          bottom: _isHover ? -widget.offset.dy : 0,
          right: _isHover ? widget.offset.dx : 0,
          child: InkWell(
            onTap: () {},
            onHover: (hover) {
              setState(() {
                _isHover = hover;
              });
            },
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            borderRadius: BorderRadius.circular(15),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: widget.size.height,
              width: widget.size.width,
              decoration: BoxDecoration(
                color: _isHover ? widget.hoverColor : widget.bgColor,
                borderRadius: BorderRadius.circular(15),
                border: widget.border,
              ),
              child: widget.child,
            ),
          ),
        )
      ],
    );
  }
}
