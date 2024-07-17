import 'package:flutter/material.dart';

class PaginadeRegistro extends StatefulWidget {
  const PaginadeRegistro({super.key});

  @override
  State<PaginadeRegistro> createState() => _PaginadeRegistroState();
}

class _PaginadeRegistroState extends State<PaginadeRegistro> {
  final _formKey = GlobalKey<FormState>();
  String txtNombres = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.network(
                      "https://cdn-icons-png.flaticon.com/128/758/758669.png",
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "Ir a registrarse..",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Crear una nueva cuenta",
                    ),
                    SizedBox(height: 24.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nombre completo",
                        prefixIcon: Icon(Icons.person_3_rounded),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Ingrese nombre completo";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        txtNombres = value!;
                      },
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email_sharp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "recordar password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Validar el formulario
                            _formKey.currentState!
                                .save(); // Guardar el formulario si es válido
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Registro exitoso')),
                            );
                          }
                        },
                        child: Text("Registrarse"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tienes una cuenta?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/inicio');
                          },
                          child: Text(
                            "Iniciar sesión",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
