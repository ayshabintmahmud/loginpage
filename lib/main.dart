import "package:flutter/material.dart";
//import 'app_example/Login_Screen.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue), home: LoginPage());
  }
}



class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,

                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login here',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  child: Image(
                    width: 200.0,
                    height: 100.0,
                    image: AssetImage ("assets/images/signin.png"
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Text('Dont have an account yet?'),
                        FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text(
                            'Sign up',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecondPage()),
                            );//signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}

class SecondPage extends StatelessWidget{
  TextEditingController fullnameController = TextEditingController();
  TextEditingController UnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build (BuildContext context){
     return Scaffold(
         body: Padding(
         padding: EdgeInsets.all(10),
    child: ListView(
    children: <Widget>[
    Container(
    alignment: Alignment.center,

    child: Text(
    'Welcome!',
    style: TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.w500,
    fontSize: 30),
    )),
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text(
            'Signup here',
            style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30),
          )),
      Container(
        child: Image(
          width: 200.0,
          height: 100.0,
          image: AssetImage ("assets/images/password.png"
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: fullnameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Full Name',
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: emailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email Address',
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: UnameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'User Name',
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: TextField(
          obscureText: true,
          controller: passwordController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
      ),

      Container(
          height: 50,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: RaisedButton(
            textColor: Colors.white,
            color: Colors.blue,
            child: Text('Sign Up'),
            onPressed: () {
              print(fullnameController.text);
              print(UnameController.text);
              print(emailController.text);
              print(passwordController.text);
            },
          )),
      Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Text('Already Have an Account?'),
              FlatButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ))

  ]
     )));
  }

}
