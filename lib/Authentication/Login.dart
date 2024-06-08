import 'package:coffeeapp/Authentication/Register.dart';
import 'package:coffeeapp/DashBoard.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool showPassword = true;

  void _btnShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void _BtnLogin() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DashBoard()));
  }
  void _Register() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100 , bottom: 40),
                child: Center(
                  child: Text("LOGIN" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40 , bottom: 20 , right: 20 , left: 20),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email_outlined)
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20 , right: 20 , left: 20),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: showPassword ? true : false,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                        ),
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.key),
                        suffixIcon:IconButton(
                          icon: showPassword ?const Icon(Icons.visibility_off) : const Icon(Icons.remove_red_eye),
                          onPressed: _btnShowPassword,
                        ) ,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20 , right: 20 , left: 20),
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: _BtnLogin,
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(top: 10 , bottom: 10),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                    child:  const Text("LOGIN" , style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w500 , fontSize: 20),),
                  )
                ),
              ),
              GestureDetector(
                onTap: _Register,
                child: const Center(
                  child:Text("Don't have account ? Register Now") ,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
