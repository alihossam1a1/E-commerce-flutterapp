import 'package:ali0522009/pages/products_page.dart';
import 'package:ali0522009/pages/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/login_provider.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center( child: Text("Login")),
        leading: Icon(Icons.list,color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.settings,color: Colors.black,),
          )
        ],
      ),
      body: Consumer<LoginProvider>(builder: (context, valuee, child)
      {
        return  Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(

              children: [
                CircleAvatar(backgroundColor: Colors.grey,maxRadius: 100,),
                SizedBox(height: 50,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: email,
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: password,
                ),
                SizedBox(height: 40,),
                OutlinedButton(
                  onPressed: () async{
                   if(valuee.registrationModel==null)
                     {
                       valuee.login(email.text, password.text);
                     }
                   else if (valuee.registrationModel!.status==true)
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()));
                     }
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));
                  },
                  child: Text("Login"),
                ),
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                }, child: Text("Dont have an account"))
              ],
            ),
          ),
        );
      },),
    );
  }
}
