import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../utils/pallete_color.dart';

class InformationIconsConfig {
  final double iconBoxWidth;
  final double iconBoxHeight;
  final double textBoxWidth;
  final double textBoxHeight;
  const InformationIconsConfig({
    required this.iconBoxWidth,
    required this.iconBoxHeight,
    required this.textBoxWidth,
    required this.textBoxHeight,
  });
}

class InformationIcons extends StatelessWidget {
  final InformationIconsConfig informationIconsConfig;

  const InformationIcons({Key? key, required this.informationIconsConfig})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Color? clientOrangeColor = Palette.projectCollors[100];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 40,
              child: Container(
                height: informationIconsConfig.textBoxHeight,
                width: informationIconsConfig.textBoxWidth,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                    color: clientOrangeColor != null
                        ? clientOrangeColor
                        : Colors.orange,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Descontos Exclusivos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              width: screenSize.width <= 60 ? screenSize.width / 28 : 60,
              height: 60,
              decoration: BoxDecoration(
                color: Palette.projectCollors[100],
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: Icon(
                LineAwesomeIcons.piggy_bank,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
        SizedBox(
          width: screenSize.width / 48,
        ),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 40,
              child: Container(
                height: informationIconsConfig.textBoxHeight,
                width: informationIconsConfig.textBoxWidth,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                    color: clientOrangeColor != null
                        ? clientOrangeColor
                        : Colors.orange,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Até 40 dias para pagar sem juros",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 9.8,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              width: screenSize.width <= 60 ? screenSize.width / 28 : 60,
              height: 60,
              decoration: BoxDecoration(
                color: Palette.projectCollors[100],
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: Icon(
                LineAwesomeIcons.calendar_1,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
        SizedBox(
          width: screenSize.width / 48,
        ),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 40,
              child: Container(
                height: informationIconsConfig.textBoxHeight,
                width: informationIconsConfig.textBoxWidth,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                    color: clientOrangeColor != null
                        ? clientOrangeColor
                        : Colors.orange,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sem anuidade e sem taxa de adesão",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 9.8,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              width: screenSize.width <= 60 ? screenSize.width / 28 : 60,
              height: 60,
              decoration: BoxDecoration(
                color: Palette.projectCollors[100],
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: Icon(
                LineAwesomeIcons.calendar_check,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
