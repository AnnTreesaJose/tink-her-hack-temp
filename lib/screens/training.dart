import 'package:flutter/material.dart';
import '../widgets/card.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  Widget box(icon,title,time){
    return AppCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Icon(icon,color:Colors.teal,size:30),
          const SizedBox(height:8),
          Text(title,style:const TextStyle(fontWeight:FontWeight.bold)),
          Text(time,style:const TextStyle(color:Colors.grey))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children:[
          Container(
            height:140,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors:[Color(0xff4facfe),Color(0xff7b5cff)]
              )
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("3 Day Streak",style:TextStyle(color:Colors.white70)),
                SizedBox(height:10),
                Text("Good Morning 👋",
                  style:TextStyle(color:Colors.white,fontSize:22,fontWeight:FontWeight.bold))
              ],
            ),
          ),
          const SizedBox(height:20),
          const Text("Today's Training",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
          const SizedBox(height:10),

          GridView.count(
            crossAxisCount:2,
            shrinkWrap:true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing:12,
            mainAxisSpacing:12,
            children:[
              box(Icons.mic,"Voice Power","5 min"),
              box(Icons.camera_alt,"Posture","3 min"),
              box(Icons.emoji_emotions,"Expression","4 min"),
              box(Icons.book,"Diary","10 min"),
            ],
          )
        ],
      ),
    );
  }
}