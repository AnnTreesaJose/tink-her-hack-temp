import 'package:flutter/material.dart';
import '../widgets/card.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool sound=true;
  bool music=false;
  bool notif=true;

  Widget toggle(t,val,fn){
    return Padding(
      padding: const EdgeInsets.only(bottom:12),
      child: AppCard(
        child: SwitchListTile(title:Text(t),value:val,onChanged:fn),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children:[
          const Text("Settings",style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),
          const SizedBox(height:20),

          toggle("Sound Effects",sound,(v)=>setState(()=>sound=v)),
          toggle("Music",music,(v)=>setState(()=>music=v)),
          toggle("Notifications",notif,(v)=>setState(()=>notif=v)),
        ],
      ),
    );
  }
}