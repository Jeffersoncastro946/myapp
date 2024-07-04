import 'package:flutter/material.dart';

class CounterFuntionScreen extends StatefulWidget {

  const CounterFuntionScreen({super.key});

  @override
  //
  State<CounterFuntionScreen> createState() => _CounterFuntionScreenState();
}

class _CounterFuntionScreenState extends State<CounterFuntionScreen> {
   int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          title: const Text(
            'Counter funtion',
          ),
          actions: [
            IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: (){
              setState(() {
                clickCounter=0;
              });
            }
          ),
          ],
           backgroundColor: Colors.indigo[800],
           centerTitle: true,
           foregroundColor: Colors.indigo[100],
          ),
       body:  Center(

         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style:const TextStyle( fontSize: 160,fontWeight: FontWeight.w100)),
            Text((clickCounter==1)?"Click":"Clicks", style: const TextStyle(fontSize: 25))
          ],
         
         )
       ),
       floatingActionButton:  Row(
      
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
        
      CustomBotton(
      btnIcon: Icons.plus_one_outlined,
      onPressed: (){
        setState(() {
          clickCounter++;
        });
      },
      ),
      const SizedBox(width:10),
       CustomBotton(btnIcon: Icons.exposure_minus_1_outlined,
       onPressed: (){
        setState(() {
          clickCounter--;
        });
       },
       ),
        ],
       )
     );
  }
}

class CustomBotton extends StatelessWidget {
  final IconData btnIcon;
  final VoidCallback? onPressed;
  const CustomBotton({
  super.key,
   required this.btnIcon,
   this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
    onPressed:onPressed,
    shape: const StadiumBorder(),
    child:  Icon(btnIcon),
    );
  }
}
