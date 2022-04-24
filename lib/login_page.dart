import 'package:flutter/material.dart';
import 'package:flutter_ads/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    'https://cdn.icon-icons.com/icons2/2072/PNG/96/arrow_entrance_in_internet_log_login_security_icon_127060.png'),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  onChanged: (text) => email = text,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  onChanged: (text) => senha = text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (email == 'luan@gmail.com' && senha == '123') {
                        print('login correto');
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('login errado');
                      }
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
