import 'package:flutter/material.dart';
import '../widgets/card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Widget stat(t,v){
    return Expanded(
      child: AppCard(
        child: Column(
          children:[
            Text(v,style:const TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
            Text(t)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children:[
          const Text("Dashboard",style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),
          const SizedBox(height:20),

          Row(children:[
            stat("Streak","3"),
            const SizedBox(width:10),
            stat("Points","142"),
            const SizedBox(width:10),
            stat("Sessions","7"),
          ]),

          const SizedBox(height:20),
          const Text("Achievements",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),

          const SizedBox(height:10),
          AppCard(child: const Text("Voice Master")),
          const SizedBox(height:10),
          AppCard(child: const Text("Champion")),
        ],
      ),
    );
  }
}