import 'package:flutter/material.dart' ;

void main()
{
  runApp(Myapp()) ;
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
         backgroundColor: Colors.black,
       appBar: AppBar(
         backgroundColor: Colors.red,
         title: Text("Snackbar"),
       ),
         body: Container(
           child: Center(
             child: Builder(
               builder: (context) {
                 return ElevatedButton(
                   onPressed: (){
                     final snackbar = SnackBar(
                       action: SnackBarAction(label: 'Cancel',textColor: Colors.white70,onPressed: (){
                         print("Undone") ;
                     },),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20) ,
                       ),
                       behavior: SnackBarBehavior.floating,
                       padding: EdgeInsets.all(5),
                       duration: const Duration(seconds: 10),
                       backgroundColor: Colors.blue,
                       content : Text("Starting Download..."),) ;
                     ScaffoldMessenger.of(context).showSnackBar(snackbar) ;
                   },
                   child: Text("Download"),
                 );
               }
             ),
           ),
         ),
      ),
    );
  }
}
