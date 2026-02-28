import 'package:flutter/material.dart';
import '../widgets/card.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  Widget item(t,time){
    return Padding(
      padding: const EdgeInsets.only(bottom:12),
      child: AppCard(
        child: ListTile(
          leading: const Icon(Icons.alarm,color:Colors.teal),
          title: Text(t),
          subtitle: Text(time),
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
          const Text("Reminders",style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),
          const SizedBox(height:20),

          item("Meditation","07:00"),
          item("Voice Practice","09:30"),
          item("Meeting Prep","13:00"),
          item("Reflection","20:00"),
        ],
      ),
    );
  }
}