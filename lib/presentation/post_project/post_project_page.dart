import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/shared/widgets/buttom_nav_bar.dart';

import 'package:teambey_org/presentation/shared/widgets/web_layout.dart';

class PostProjectPage extends StatelessWidget {
  const PostProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 700) {
        return const WebLayout(body: RahaNafsya());
      } else {
        return const MobileView();
      }
    });
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [Expanded(child: RahaNafsya()), BottomNavBar(index: 2)],
    ));
  }
}

class RahaNafsya extends StatefulWidget {
  const RahaNafsya({
    super.key,
  });

  @override
  State<RahaNafsya> createState() => _RahaNafsyaState();
}

class _RahaNafsyaState extends State<RahaNafsya> {
  final list = <Widget>[];
  double lastX = 198;
  double lastY = 267;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('Chakhbat chakhabit'), Text('Page raha nafsya')],
        ),
        Expanded(
          child: Stack(
            children: [
              ...list,
              ButtonRahaNafsya(
                onDarg: (details) {
                  lastX += details.delta.dx;
                  lastY += details.delta.dy;
                  setState(() {
                    list.add(Positioned(
                        top: lastY,
                        left: lastX,
                        child: Container(
                          width: 5,
                          height: 5,
                          color: Colors.teal,
                        )));
                  });
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ButtonRahaNafsya extends StatefulWidget {
  const ButtonRahaNafsya({super.key, required this.onDarg});
  final void Function(DragUpdateDetails details) onDarg;

  @override
  State<ButtonRahaNafsya> createState() => _ButtonRahaNafsyaState();
}

class _ButtonRahaNafsyaState extends State<ButtonRahaNafsya> {
  double positionX = 200;
  double positionY = 250;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: positionY,
        left: positionX,
        child: Draggable(
            onDragUpdate: (details) {
              widget.onDarg(details);

              setState(() {
                positionY += details.delta.dy;
                positionX += details.delta.dx;
              });
            },
            feedback: Container(),
            child: const Icon(Icons.edit)));
  }
}
