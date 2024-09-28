import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> {
  late bool hidepasswordedit = true;
  final TextEditingController _usernamecontrol = TextEditingController();
  final TextEditingController _passwordcontrol = TextEditingController();

  @override
  void dispose() {
    // 调用dispose, 防止内存泄露
    _usernamecontrol.dispose();
    _passwordcontrol.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 30),
            child: Text("Login", style: TextStyle(fontFamily: 'cascadiacode', fontWeight: FontWeight.w500, fontSize: 50, color: Colors.white)),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: _usernamecontrol,
                      style: const TextStyle(fontFamily: 'cascadiacode', color: Colors.white),
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Color(0xff3f3f3f), width: 3)), hintText: 'name@example.com', hintStyle: const TextStyle(color: Colors.white, fontFamily: 'cascadiacode'), contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10)),
                      textAlign: TextAlign.start,
                      cursorColor: Colors.deepOrangeAccent,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: _passwordcontrol,
                      style: const TextStyle(fontFamily: 'cascadiacode', color: Colors.white),
                      obscureText: hidepasswordedit,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Color(0xff3f3f3f), width: 3)),
                          // hintText: 'name@example.com',
                          hintStyle: const TextStyle(color: Colors.white, fontFamily: 'cascadiacode'),
                          contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                          suffixIcon: GestureDetector(
                            onTapDown: (TapDownDetails details) {
                              setState(() {
                                hidepasswordedit = false;
                              });
                            },
                            onTapUp: (TapUpDetails details) {
                              setState(() {
                                hidepasswordedit = true;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.visibility_rounded, color: hidepasswordedit ? const Color(0xff3f3f3f) : Colors.white),
                            ),
                          )),
                      textAlign: TextAlign.start,
                      cursorColor: Colors.deepOrangeAccent,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                            backgroundColor: const WidgetStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Login',
                            style: TextStyle(fontFamily: 'cascadiacode', fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
