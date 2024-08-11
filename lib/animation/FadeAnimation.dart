// import 'package:flutter/material.dart';
// import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

// class FadeAnimation extends StatefulWidget {
//   final double delay;
//   final Widget child;

//   const FadeAnimation(this.delay, this.child, {super.key});

//   @override
//   _FadeAnimationState createState() => _FadeAnimationState();
// }

// class _FadeAnimationState extends State<FadeAnimation>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late SequenceAnimation _sequenceAnimation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(vsync: this);
//     _sequenceAnimation = SequenceAnimationBuilder()
//         .addAnimatable(
//           animatable: Tween(begin: 0.0, end: 1.0),
//           from: Duration(milliseconds: (500 * widget.delay).round()),
//           to: Duration(milliseconds: (500 * widget.delay).round() + 500),
//           tag: "opacity",
//         )
//         .addAnimatable(
//           animatable: Tween(begin: -30.0, end: 0.0),
//           from: Duration(milliseconds: (500 * widget.delay).round()),
//           to: Duration(milliseconds: (500 * widget.delay).round() + 500),
//           tag: "translateY",
//           curve: Curves.easeOut,
//         )
//         .animate(_controller);
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _controller,
//       builder: (context, child) {
//         return Opacity(
//           opacity: _sequenceAnimation["opacity"].value,
//           child: Transform.translate(
//             offset: Offset(0, _sequenceAnimation["translateY"].value),
//             child: widget.child,
//           ),
//         );
//       },
//       child: widget.child,
//     );
//   }
// }
