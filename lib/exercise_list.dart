import 'package:flutter/material.dart';
import 'exercise.dart';

class ExerciseList extends StatelessWidget {
  var exercises = [
    {
      'name': 'SUPINO RETO NO APARELHO',
      'repetitions': '12',
      'times': '3',
      'weight': '35'
    },
    {
      'name': 'SUPINO RETO',
      'repetitions': '12',
      'times': '3',
      'weight': '30',
    },
    {
      'name': 'supino banco 45',
      'repetitions': '12',
      'times': '3',
      'weight': '25'
    },
    {
      'name': 'Flexão de braços aberta',
      'repetitions': '10',
      'times': '3',
      'weight': ''
    },
    {
      'name': 'tríceps maquina',
      'repetitions': '12',
      'times': '3',
      'weight': '45'
    },
    {
      'name': 'tríceps na polia alta corda',
      'repetitions': '12',
      'times': '3',
      'weight': '45'
    },
    {
      'name': 'tríceps na polia alta barra',
      'repetitions': '12',
      'times': '3',
      'weight': '45'
    },
  ];

  List<Widget> getExercises() {
    List<Widget> widgets = [];

    exercises.asMap().forEach((index, value) {
      var exercise = Exercise(
          exerciseName: value['name'],
          repetitions: value['repetitions'],
          weight: value['weight'],
          times: value['times']);

      if (index != 0) {
        widgets.add(Divider());
      }
      widgets.add(exercise);
    });
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    var widgets = getExercises();
    print('teste');
    return ListView(children: widgets);
  }
}
