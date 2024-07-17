import 'dart:convert';
import 'package:http/http.dart' as http;

//1. Hacer una solicitud de red usando el método get
Future<List<Users>> consultarUsuarios() async {
  final response = await http.get(
      Uri.parse('https://apirestnodeexpressmongodb.onrender.com/api/users'));
  if (response.statusCode == 200) {
    List<dynamic> jsonList = jsonDecode(response.body);
    return jsonList.map((json) => Users.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load jewelry products');
  }
}

/////////////////////////////////
//2. Convertir la respuesta de la web a un objeto dart

class Users {
  //final  String _id;
  final name;
  final email;

  const Users({
    //required String this._id,
    required this.name,
    required this.email,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      name: json['name'],
      email: json['email'],
    );
  }
}
  




