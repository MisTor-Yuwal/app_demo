
import 'package:flutter/material.dart';
class ContentWidgets extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const ContentWidgets({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children:  [
          
         ListTile(
           leading:const CircleAvatar(
             child: Text("M"),
           ),
           title: Text(title, style:const TextStyle(fontWeight: FontWeight.bold),),
           subtitle: const Text("feeling something",style:  TextStyle(fontWeight: FontWeight.w300),),
           trailing: const Icon(Icons.heart_broken),
         ),
         const SizedBox(
          height: 5,
         ),
           SizedBox(
            child: ListTile(
              subtitle: Text(description,style: const TextStyle(fontWeight: FontWeight.w600),),
            ),
         ),
         SizedBox(
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   child: 
                     Image.network(image),
                 ),
               ),
             ],
           ),
         ),
        ListTile(
          leading: Wrap(
            spacing: 12,
            children: [
               TextButton(onPressed: () {},
                 child: const Icon(Icons.thumb_up_sharp),),
               TextButton(onPressed: () {},
                  child: const Icon(Icons.comment),),
            ],
          ),
          trailing: const Icon(Icons.share),
        )
        ],
      ),
    );
  }
}