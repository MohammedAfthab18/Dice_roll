import 'package:flutter/material.dart';
import 'package:my_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // const GradientContainer.purple({super.key})
  // : color1 = Colors.deepPurple ,
  //   color2 = Colors.greenAccent;

  final Color color1;
  final Color color2;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
          child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key , required this.colors});

//   final List<Color> colors;
//   //Class Logic
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//              begin: startAligment,
//              end: endAlignment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText("Hello World!"),
//       ),
//     );
//   }
// }