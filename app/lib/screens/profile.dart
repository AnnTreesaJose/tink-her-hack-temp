import 'package:flutter/material.dart';
import '../widgets/card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget stat(t,v){
    return Expanded(child: AppCard(child:Column(
      children:[Text(v,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold)),Text(t)]
    )));
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children:[
          const CircleAvatar(radius:40,child:Icon(Icons.person,size:40)),
          const SizedBox(height:10),
          const Center(child:Text("Alex Johnson",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold))),
          const SizedBox(height:20),

          Row(children:[
            stat("Streak","3"),
            const SizedBox(width:10),
            stat("Points","142"),
            const SizedBox(width:10),
            stat("Sessions","7"),
          ])
        ],
      ),
    );
  }
}