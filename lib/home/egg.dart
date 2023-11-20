import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wear_tamagotchi/home/shake_constant.dart';
import 'package:wear_tamagotchi/home/shake_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'egg_store.dart';
import 'shake_rotate_constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final EggStore _store = EggStore();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Observer(builder: (_) {
        return GestureDetector(
          onTap: _store.shake
              ? null
              : () {
                  _store.tapEgg();
                },
          child: ShakeItem(
            autoPlay: _store.shake,
            shake: ShakeRotateConstant2(),
            child: getChild(),
          ),
        );
      }),
    );
  }

  Widget getChild() {
    if (_store.countTap > 5) {
      return Stack(
        children: [
          Image.asset(
            'assets/crackedtop.png',
            height: 160,
          ),
          Image.asset(
            'assets/eggcrackedbottom.png',
            height: 160,
          )
        ],
      );
    }
    if (_store.countTap > 2) {
      return Image.asset(
        'assets/egg-cracked.png',
        height: 160,
      );
    }
    return SvgPicture.asset(
      'assets/egg.svg',
      height: 160,
    );
  }
}

class ShakeItem extends StatelessWidget {
  final bool autoPlay;
  final Duration? duration;
  final ShakeConstant shake;
  final Widget child;
  const ShakeItem(
      {Key? key,
      required this.shake,
      this.autoPlay = false,
      this.duration,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShakeWidget(
      duration: duration,
      shakeConstant: shake,
      autoPlay: autoPlay,
      child: child,
    );
  }
}
