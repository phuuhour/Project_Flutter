import 'package:coffeeapp/DashBoard.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();
  bool showPassword = true;

  void _btnShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void _BtnLogin() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DashBoard()));
  }
  void _Login() {
    Navigator.of(context).pop();
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
                    child: Text("REGISTER" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40 , bottom: 20 , right: 20 , left: 20),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                        ),
                        labelText: "Phone",
                        prefixIcon: Icon(Icons.phone)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10 , bottom: 20 , right: 20 , left: 20),
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
                      labelText: "Confirm",
                      prefixIcon: const Icon(Icons.key_sharp),
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
                      child:  const Text("REGISTER" , style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w500 , fontSize: 20),),
                    )
                ),
              ),
              GestureDetector(
                onTap: _Login,
                child: const Center(
                  child:Text("Have account ? Login Now") ,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
