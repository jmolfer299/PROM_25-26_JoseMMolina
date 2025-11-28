import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';

class FormSeries extends StatefulWidget {
  
  const FormSeries({super.key});

  @override
  State<FormSeries> createState() => _FormSeriesState();
}

class _FormSeriesState extends State<FormSeries> {
  String selectedSeries = '';
  
  Map<String, bool> seriesMap = {
    'Peaky Blinders': false,
    'Prison Break': false,
    'Juego de Tronos': false,
    'La Casa de Papel': false,
  };
  @override
  Widget build(BuildContext context) {
    final seriesList = seriesMap.keys.toList();

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Text(
                'Selecciona tus series favoritas:',
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
                seriesList[0],
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
                value: seriesMap[seriesList[0]],
                onChanged: (bool? value) {
                  setState(() {
                    seriesMap[seriesList[0]] = value ?? false;
                  });

                  if (value == true) {
                    addSerie(seriesList[0]);
                  } else {
                    removeSerie(seriesList[0]);
                  }
                },
              ),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Text(
                seriesList[1],
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
                value: seriesMap[seriesList[1]],
                onChanged: (bool? value) {
                  setState(() {
                    seriesMap[seriesList[1]] = value ?? false;
                  });
                  if (value == true) {
                    addSerie(seriesList[1]);
                  } else {
                    removeSerie(seriesList[1]);
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
                seriesList[2],
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
                value: seriesMap[seriesList[2]],
                onChanged: (bool? value) {
                  setState(() {
                    seriesMap[seriesList[2]] = value ?? false;
                  });

                  if (value == true) {
                    addSerie(seriesList[2]);
                  } else {
                    removeSerie(seriesList[2]);
                  }
                },
              ),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16),
              child: Text(
                seriesList[3],
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
                value: seriesMap[seriesList[3]],
                onChanged: (bool? value) {
                  setState(() {
                    seriesMap[seriesList[3]] = value ?? false;
                  });
                  if (value == true) {
                    addSerie(seriesList[3]);
                  } else {
                    removeSerie(seriesList[3]);
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
                  'Series seleccionadas: $selectedSeries',
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