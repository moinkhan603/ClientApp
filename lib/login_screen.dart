import 'package:bbva/padlock_animation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool login = false;
  FocusNode _focus = FocusNode();
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    debugPrint("Focus: ${_focus.hasFocus.toString()}");
    if (_focus.hasFocus) {
      setState(() {
        login = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                height: 120,
                color: Color(0xff092851),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/token.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Token Móvil',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                height: 120,
                color: Color(0xff0F3568),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/QR.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Operaión\nQR+CoDi',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xff154481),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: login ? 100 : 220,
                color: login ? Color(0xff154481) : Color(0xff3DB2EA),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            'assets/images/LOGO.png',
                            height: 50,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/images/menu_line.png',
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                    if (!login)
                      Image.asset(
                        'assets/images/mask.png',
                        height: 130,
                      ),
                    if (!login)
                      Text(
                        'Úsalo',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                  ],
                ),
              ),
              if (!login)
                SizedBox(
                  height: 20,
                ),
              Text(
                'Hola',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Oscar',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                'Cambiar usuario',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: login
                      ? Border.all(
                          color: Colors.white,
                        )
                      : null,
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  focusNode: _focus,
                  controller: controller,
                  decoration: new InputDecoration(
                      label: Text(
                        'Contraseña',
                        style: TextStyle(color: Colors.white70),
                      ),
                      enabledBorder: !login?UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ):UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder:!login? UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ):UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: !login?UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ):UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusColor: Colors.white,
                      suffix: Image.asset(
                        'assets/images/eyes.png',
                        height: 20,
                      ),
                      hintText: !login ? 'Contraseña' : '',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Olvidé mi contraseña',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                child: CupertinoButton(
                    color: Color(0xff46759F),
                    borderRadius: BorderRadius.zero,
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PadLockAnimationScreen(
                                  firstContainerHeight: 0.0,
                                  secondContainerHeight:
                                      MediaQuery.of(context).size.height,
                                )),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
