import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/drawer_menu.dart';
import 'package:flutter_1/widgets/appbar_widget.dart';
import 'package:flutter_1/widgets/form_pelis_widget.dart';
import 'package:flutter_1/widgets/form_series_widget.dart';

class FormsScreen extends StatefulWidget {
  const FormsScreen({super.key});

  @override
  State<FormsScreen> createState() => _FormsScreenState();
}

class _FormsScreenState extends State<FormsScreen> {
  final _formKey = GlobalKey<FormState>();
  
  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _dniController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _edadController = TextEditingController();
  final _emailController = TextEditingController();
  
  bool limpiador = false;
  Widget formulario = FormPelis();

  final RegExp _nombrePattern = RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]{2,50}$');
  final RegExp _dniPattern = RegExp(r'^\d{8}[A-Z]$');
  final RegExp _telefonoPattern = RegExp(r'^[6-9]\d{8}$');
  final RegExp _emailPattern = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
  );

  @override
  void dispose() {
    _nombreController.dispose();
    _apellidoController.dispose();
    _dniController.dispose();
    _telefonoController.dispose();
    _edadController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _limpiarFormulario() {
    _nombreController.clear();
    _apellidoController.clear();
    _dniController.clear();
    _telefonoController.clear();
    _edadController.clear();
    _emailController.clear();
    _formKey.currentState?.reset();
  }

  void _enviarFormulario() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Formulario válido. Datos enviados correctamente.'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Por favor, corrija los errores del formulario.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColorsLight.background
          : AppColorsDark.background,
      drawer: DrawerMenu(),
      appBar: AppbarWidget(title: "Formulario"),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: _enviarFormulario,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.light
                      ? AppColorsLight.primary
                      : AppColorsDark.secondary,
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColorsLight.text
                        : AppColorsDark.text,
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                onPressed: _limpiarFormulario,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                child: Text(
                  'Limpiar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Formulario Personal',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColorsLight.text
                        : AppColorsDark.text,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _nombreController,
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'El nombre es obligatorio';
                        }
                        if (!_nombrePattern.hasMatch(value)) {
                          return 'Solo letras, entre 2 y 50 caracteres';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _apellidoController,
                      decoration: InputDecoration(
                        labelText: 'Apellido',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'El apellido es obligatorio';
                        }
                        if (!_nombrePattern.hasMatch(value)) {
                          return 'Solo letras, entre 2 y 50 caracteres';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _dniController,
                      decoration: InputDecoration(
                        labelText: 'DNI',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.badge),
                        hintText: '12345678A',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'El DNI es obligatorio';
                        }
                        if (!_dniPattern.hasMatch(value.toUpperCase())) {
                          return 'Formato: 8 números y una letra (ej: 12345678A)';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _telefonoController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Teléfono',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                        hintText: '612345678',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'El teléfono es obligatorio';
                        }
                        if (!_telefonoPattern.hasMatch(value)) {
                          return 'Teléfono español: 9 dígitos (comienza con 6-9)';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _edadController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Edad',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.cake),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'La edad es obligatoria';
                        }
                        final edad = int.tryParse(value);
                        if (edad == null) {
                          return 'Debe ser un número válido';
                        }
                        if (edad < 18 || edad > 120) {
                          return 'La edad debe estar entre 18 y 120 años';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        hintText: 'ejemplo@correo.com',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'El email es obligatorio';
                        }
                        if (!_emailPattern.hasMatch(value)) {
                          return 'Email inválido (ej: usuario@dominio.com)';
                        }
                        return null;
                      },
                    ),
                  ),
                  SwitchListTile(
                    title: Text(
                      formulario is FormPelis ? "Películas" : "Series",
                      style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.light
                            ? AppColorsLight.text
                            : AppColorsDark.text,
                      ),
                    ),
                    value: formulario is FormPelis,
                    onChanged: (value) {
                      setState(() {
                        if (value) {
                          formulario = FormPelis();
                        } else {
                          formulario = FormSeries();
                        }
                      });
                    },
                  ),
                  Container(child: formulario),
                  SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}