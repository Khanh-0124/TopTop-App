import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatefulWidget {
  const CustomCircleAvatar({
    Key? key,
    required this.avatarUrl,
    required this.radius,
  }) : super(key: key);

  final String avatarUrl;
  final double radius;

  @override
  State<CustomCircleAvatar> createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  bool _loadImageError = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: widget.radius,
      backgroundImage: _loadImageError ? null : NetworkImage(widget.avatarUrl),
      onBackgroundImageError: _loadImageError
          ? null
          : (e, stack) {
              setState(() {
                _loadImageError = true;
              });
            },
    );
  }
}
