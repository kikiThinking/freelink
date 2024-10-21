import 'package:expandable_menu/expandable_icon.dart';
import 'package:expandable_menu/expandable_menu.dart';
import 'package:flutter/material.dart';
import 'package:freelink/icon/customicon.dart';

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
            child: Text("Login", style: TextStyle(fontFamily: 'cascadiacode', fontWeight: FontWeight.w500, fontSize: 50, color: Colors.black)),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15), boxShadow: [BoxShadow(color: Colors.grey.withOpacity(.8), spreadRadius: 0.1, blurRadius: 10)]),
              child: Padding(
                padding: EdgeInsets.only(top: 50, bottom: 80, right: 80, left: 80),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text('Freelink', style: TextStyle(fontFamily: 'cascadiacode', color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: _usernamecontrol,
                          style: const TextStyle(fontFamily: 'cascadiacode', color: Colors.black),
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Color(0xff3f3f3f), width: 3)), hintText: 'name@example.com', hintStyle: const TextStyle(color: Colors.black, fontFamily: 'cascadiacode'), contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10)),
                          textAlign: TextAlign.start,
                          cursorColor: Colors.deepOrangeAccent,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: _passwordcontrol,
                          style: const TextStyle(fontFamily: 'cascadiacode', color: Colors.black),
                          obscureText: hidepasswordedit,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Color(0xff3f3f3f), width: 3)),
                              // hintText: 'name@example.com',
                              hintStyle: const TextStyle(color: Colors.black, fontFamily: 'cascadiacode'),
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
                                  child: hidepasswordedit ? Icon(Icons.visibility_off_outlined, color: const Color(0xff3f3f3f)) : Icon(Icons.visibility_rounded, color: const Color(0xff3f3f3f)),
                                ),
                              )),
                          textAlign: TextAlign.start,
                          cursorColor: Colors.deepOrangeAccent,
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                    backgroundColor: const WidgetStatePropertyAll(Colors.black),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(fontFamily: 'cascadiacode', fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                                  )),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Positioned(
          //   bottom: 20,
          //   right: 20,
          //   left: 0,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width * .1,
          //     child: ExpandableMenu(
          //       width: 70,
          //       height: 70,
          //       items: [
          //         IconButton(onPressed: (){}, icon: Icon(JCIcons.telegram, color: Colors.white30,)),
          //         IconButton(onPressed: (){}, icon: Icon(JCIcons.instagram)),
          //         IconButton(onPressed: (){}, icon: Icon(JCIcons.github)),
          //         IconButton(onPressed: (){}, icon: Icon(JCIcons.qq)),
          //         IconButton(onPressed: (){}, icon: Icon(JCIcons.wechat)),
          //         IconButton(onPressed: (){}, icon: Icon(JCIcons.gmail)),
          //       ],
          //       backgroundColor: Colors.teal,
          //     ),
          //   )
          // )
        ],
      ),
    );
  }
}
