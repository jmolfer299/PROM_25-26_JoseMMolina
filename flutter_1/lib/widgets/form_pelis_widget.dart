import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';

class FormPelis extends StatefulWidget {
  
  const FormPelis({super.key});

  @override
  State<FormPelis> createState() => _FormPelisState();
}

class _FormPelisState extends State<FormPelis> {
  String selectedSeries = '';
  
  Map<String, bool> peliculasMap = {
    'El Señor de los Anillos': false,
    'Star Wars': false,
    'Harry Potter': false,
    'Marvel': false,
  };
  @override
  Widget build(BuildContext context) {
    final peliculasList = peliculasMap.keys.toList();

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Text(
                'Selecciona tus sagas favoritas:',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColorsLight.text
                      : AppColorsDark.text,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Text(
                peliculasList[0],
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColorsLight.text
                      : AppColorsDark.text,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Checkbox(
                value: peliculasMap[peliculasList[0]],
                onChanged: (bool? value) {
                  setState(() {
                    peliculasMap[peliculasList[0]] = value ?? false;
                  });

                  if (value == true) {
                    addSerie(peliculasList[0]);
                  } else {
                    removeSerie(peliculasList[0]);
                  }
                },
              ),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Text(
                peliculasList[1],
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColorsLight.text
                      : AppColorsDark.text,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Checkbox(
                value: peliculasMap[peliculasList[1]],
                onChanged: (bool? value) {
                  setState(() {
                    peliculasMap[peliculasList[1]] = value ?? false;
                  });
                  if (value == true) {
                    addSerie(peliculasList[1]);
                  } else {
                    removeSerie(peliculasList[1]);
                  }
                },
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Text(
                peliculasList[2],
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColorsLight.text
                      : AppColorsDark.text,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Checkbox(
                value: peliculasMap[peliculasList[2]],
                onChanged: (bool? value) {
                  setState(() {
                    peliculasMap[peliculasList[2]] = value ?? false;
                  });

                  if (value == true) {
                    addSerie(peliculasList[2]);
                  } else {
                    removeSerie(peliculasList[2]);
                  }
                },
              ),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Text(
                peliculasList[3],
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColorsLight.text
                      : AppColorsDark.text,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Checkbox(
                value: peliculasMap[peliculasList[3]],
                onChanged: (bool? value) {
                  setState(() {
                    peliculasMap[peliculasList[3]] = value ?? false;
                  });
                  if (value == true) {
                    addSerie(peliculasList[3]);
                  } else {
                    removeSerie(peliculasList[3]);
                  }
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 16),
                child: Text(
                  'Sagas seleccionadas: $selectedSeries',
                  softWrap: true,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void addSerie(String s) {
    setState(() {
      selectedSeries += '$s | ';
    });
  }

  void removeSerie(String s) {
    setState(() {
      selectedSeries = selectedSeries.replaceAll('$s | ', '');
    });
  }
}