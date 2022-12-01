import 'package:first/presentaion/screens/my_app.dart';
import 'package:first/presentaion/widgets/default_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:first/constants/screens.dart'as  screen;

TextEditingController emailController = TextEditingController();
TextEditingController passwardController = TextEditingController();
IconData suffixIcon = Icons.visibility_off_outlined;
bool isHidden = true;
var formKey = GlobalKey<FormState>();
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: DefaultText(
         text: "Register",

            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40,
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: InkWell(
                  onTap: (){
                    Fluttertoast.showToast(
                        msg: "Hello user!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0

                    );
                  },
                  child: Image.asset(
                    "assets/login-new.png",
                    height: 200,
                    width: double.infinity,
                  ),
                ),
              ),
              SizedBox(
                child: Container(
                    child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      label:  DefaultText(text:'email'),
                      hintText: "enter email",
                      labelStyle: TextStyle(color: Colors.blue),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ))),
                  validator: (value) {
                    if (emailController.text.isEmpty) {
                      return "email address cant be empty";
                    }
                  },
                )),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Container(
                    child: TextFormField(
                  controller: passwardController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isHidden,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (isHidden) {
                              suffixIcon = Icons.remove_red_eye_outlined;
                            } else {
                              suffixIcon = Icons.visibility_off_outlined;
                            }
                            isHidden = !isHidden;
                          });
                        },
                        icon: Icon(suffixIcon),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      label:  DefaultText(text:'passward'),
                      hintText: "enter email",
                      labelStyle: TextStyle(color: Colors.blue),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      ))),
                  validator: (value) {
                    if (emailController.text.isEmpty) {
                      return "passward cant be empty";
                    }
                  },
                )),
              ),
              Container(
                  child: TextFormField(
                controller: passwardController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: isHidden,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (isHidden) {
                            suffixIcon = Icons.remove_red_eye_outlined;
                          } else {
                            suffixIcon = Icons.visibility_off_outlined;
                          }
                          isHidden = !isHidden;
                        });
                      },
                      icon: Icon(suffixIcon),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    label: Text('Re-type:passward'),
                    hintText: "re-type passward",
                    labelStyle: TextStyle(color: Colors.blue),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.deepOrange,
                    ))),
                validator: (value) {
                  if (emailController.text.isEmpty) {
                    return "passward cant be empty";
                  }
                },
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 20,
                margin: EdgeInsetsDirectional.only(bottom: 4),

                child: MaterialButton(
                  
                  onPressed: () {
                    if(formKey.currentState!.validate()){
setState(() {
  Fluttertoast.showToast(
      msg: "login succed!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0

  );
});
 Navigator.pushNamed(context,screen.HomeScreen,arguments: emailController.text);
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  height: 10,
                  child: DefaultText(

                   text: "Login",

                  ),
                  color: Colors.blue,
                  splashColor: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultText(
                     text: "or",
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {},
                child:  DefaultText(
                 text: "Login with google",
                ),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: DefaultText(
                     text :"don`t have an account",
                    ),
                  ),
                  TextButton(onPressed:(){},
                      child: DefaultText(
                        text : "sign up!",

                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
