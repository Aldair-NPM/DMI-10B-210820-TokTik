import 'package:flutter/material.dart';
import 'package:toktik_210820/config/helpers/human_formats.dart';
import 'package:toktik_210820/domains/entities/video_post.dart';

class VideoButtons extends StatelessWidget{
  final VideoPost video;

  const VideoButtons({
    super.key,
    required this.video
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes, iconData: Icons.favorite, color: Colors.red),
        _CustomIconButton(
          value: video.views, iconData: Icons.remove_red_eye_outlined),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget{
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(iconData, color: color,size: 30)),
        Text(HumanFormats.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}