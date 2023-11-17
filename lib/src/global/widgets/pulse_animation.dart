import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/utils/duration_extension.dart';

import '../utils/pulse_animation_type.dart';

class PulseAnimation extends StatefulWidget {
  const PulseAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    this.reverseDuration = const Duration(milliseconds: 200),
    this.play = false,
    required this.type,
  });

  final Widget child;
  final Duration duration;
  final Duration? reverseDuration;
  final bool play;
  final PulseAnimationType type;

  bool get isFade => type == PulseAnimationType.fade;

  @override
  State<PulseAnimation> createState() => _PulseAnimationState();
}

class _PulseAnimationState extends State<PulseAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.duration = widget.isFade ? 900.ms : widget.duration;
    _controller.reverseDuration = widget.reverseDuration;

    _scale = Tween<double>(
      begin: 1,
      end: widget.isFade ? 0.4 : 1.18,
    ).animate(_controller);

    if (widget.play) {
      _controller.repeat(reverse: true);
    } else {
      _controller.stop();
      _controller.value = _controller.lowerBound;
    }

    if (widget.isFade) {
      return FadeTransition(
        opacity: _scale,
        child: widget.child,
      );
    }

    return ScaleTransition(
      scale: _scale,
      child: widget.child,
    );
  }
}
