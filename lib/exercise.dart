import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Exercise extends StatelessWidget {
  final String repetitions;
  final String times;
  final String weight;
  final String exerciseName;

  Exercise(
      {@required this.exerciseName,
      @required this.repetitions,
      @required this.weight,
      @required this.times});

  Widget displayWeight() {
    if (weight != '') {
      return InfoSection(
        icon: FontAwesomeIcons.weightHanging,
        number: weight,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(5),
        //   border: Border.all(
        //     color: Colors.green,
        //     width: 3,
        //   ),
        // ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 14.0, left: 14, bottom: 20, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                exerciseName.toUpperCase(),
                maxLines: 1,
                maxFontSize: 25,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  InfoSection(
                    icon: FontAwesomeIcons.redoAlt,
                    number: repetitions,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InfoSection(
                    icon: FontAwesomeIcons.list,
                    number: times,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  weight != ''
                      ? (InfoSection(
                          icon: FontAwesomeIcons.weightHanging,
                          number: weight,
                        ))
                      : SizedBox(),
                  //teste
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  final IconData icon;
  final String number;

  InfoSection({this.icon, this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 25),
        SizedBox(
          width: 10,
        ),
        Text(
          number,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
