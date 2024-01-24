import 'package:clickaeventsp/screen/main%20manu/mainScreen.dart';
import 'package:clickaeventsp/screen/widgets/bodyBackground.dart';
import 'package:clickaeventsp/style/style.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';



class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  final TextEditingController emailController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();


  Map<String,String> FormValues={"email":"", "password":""};
  bool Loading=false;


  Future loginUser() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>mainScreen()));

    } catch (e) {
      print("Failed: $e");

    }
  }



  InputOnChange(MapKey, Textvalue){
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }

  // FormOnSubmit() async {
  //   if(FormValues['email']!.length==0){
  //     ErrorToast('Email Required !');
  //   }
  //   else if(FormValues['password']!.length==0){
  //     ErrorToast('Password Required !');
  //   }
  //   else{
  //     setState(() {Loading=true;});
  //     bool res=await LoginRequest(FormValues);
  //     if(res==true){
  //       Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
  //     }
  //     else{
  //       setState(() {Loading=false;});
  //     }
  //   }
  // }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('clickAEvent'),
        centerTitle: true,
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      //backgroundColor: Colors.blueAccent,

      body: BodyBackground(
        child: Stack(
          children: [
            ScreenBackground(context),
            Container(
              alignment: Alignment.center,
              child: Loading?(Center(child: CircularProgressIndicator())):(SingleChildScrollView(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Get Started With", style: Head1Text(colorWhite)),
                    SizedBox(height: 1),
                    Text("Click A Event", style: Head6Text(colorWhite)),
                    SizedBox(height: 20),
        
                    TextFormField(
                      controller: emailController ,
                      onChanged: (Textvalue){
                        InputOnChange("email",Textvalue);
                      },
                      decoration: AppInputDecoration("Email Address"),
                    ),
        
                    SizedBox(height: 20),
        
                    TextFormField(
                      controller: passwordController,
                      onChanged: (Textvalue){
                        InputOnChange("password",Textvalue);
                      },
                      decoration: AppInputDecoration("Password"),
                    ),
        
                    SizedBox(height: 20),
        
        
                    Container(child: ElevatedButton(
                      style: AppButtonStyle(),
                      child: SuccessButtonChild('Login'),
                      onPressed: (){
                        loginUser();
                      },
                    ),),
        
                    SizedBox(height: 20),
        
        
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, "/emailVerification");
                              },
                              child: Text('Forget Password?',style: Head6Text(colorWhite),
                              )
                          ),
        
                          SizedBox(height: 15),
        
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, "/SignUpPage");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have a account? ",style: Head6Text(colorDarkBlue)),
                                  Text("Sign Up",style: Head6Text(colorRed),)
                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}



