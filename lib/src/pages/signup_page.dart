import 'package:flutter/material.dart';
import '../pages/signup_page.dart]]';

class SignUpPage extends StatefulWidget{
  _SignUpPageState createState()=>_SignUpPageState();

}
class _SignUpPageState extends State<SignUpPage>
{ bool toggle=false;

  Widget _buildEmailTextField(){

    return TextFormField(

decoration: InputDecoration(
  hintText: "Your email or username",
  hintStyle: TextStyle(
    color:Color(0xFFBDC2CB),fontSize: 18.0,
  ),
),

    );
    
  }

  Widget _buildPasswordTextField(){

    return TextFormField(

decoration: InputDecoration(
  hintText: "Password",
  hintStyle: TextStyle(
    color:Color(0xFFBDC2CB),fontSize: 18.0,
  ),
  suffixIcon: IconButton(icon: toggle ?
  Icon(Icons.visibility_off):Icon(Icons.visibility), onPressed: (){
   setState(() {
     toggle=!toggle;
   
   
  });
  },
  

  ),
),
obscureText: toggle,


    );
    
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal:10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[

              Text("Sign Up", style:TextStyle(color: Colors.black,fontSize:40,fontWeight:FontWeight.bold)),
              SizedBox(
                height:100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:<Widget>
                [
                  Text("Forgotten Password?",style: TextStyle(color:Colors.blueAccent,fontSize:18,fontWeight: FontWeight.bold),),
                  SizedBox(height:40),
                ]
              )
            ,
            Card(
              elevation:10 ,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children:<Widget>[
                     _buildEmailTextField(),
                     SizedBox(height:20),
                     _buildPasswordTextField(),
                  ]
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            
          
            Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(25),
                    color: Colors.blueAccent,
                  ),
                 
                  child: Center(
                   
                    child:Text("Sign Up",style: TextStyle(color:Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                    


                  ),

            ),
            
            Divider(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text("Dont't have a account?", style:TextStyle(color:Colors.grey,fontSize: 18.0,fontWeight: FontWeight.bold)),
                SizedBox(width:10),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext cotext)=>SignUpPage()));
                  },
                  child: Text("Sign In", style:TextStyle(color:Colors.blueAccent,fontSize: 18.0,fontWeight: FontWeight.bold))),

              ]
            )
            ]
          ),
        )
      ) ;
    }
}