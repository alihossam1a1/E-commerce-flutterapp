import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/registration_provider.dart';
import 'login_page.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Center( child: Text("SignUp")),
        leading: Icon(Icons.list,color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.settings,color: Colors.black,),
          )
        ],
      ),
      body: Consumer<SignUpProvider>(builder: (context, value, child)
      {
        return  Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "UserName",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: userName,
                ),
                SizedBox(height: 20,),
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
                ), SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Phone",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: phone,
                ),
                SizedBox(height: 40,),
                OutlinedButton(
                  onPressed: () async{
                    if((userName.text!=null&&userName.text.isNotEmpty)&&(password.text!=null&&password.text.isNotEmpty)
                        &&(email.text!=null&&email.text.isNotEmpty)&&(phone.text!=null&&phone.text.isNotEmpty))
                    {
                      value.signup(userName.text, email.text, password.text,phone.text);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    }
                   else{ ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));}
                  },
                  child: Text("SignUp"),
                ),
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                }, child: Text("already have account"))
              ],
            ),
          ),
        );
      },),
    );
  }
}
