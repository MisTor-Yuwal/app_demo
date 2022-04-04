
import 'package:app/widgets/content.dart';
import 'package:flutter/material.dart';
class HoneView extends StatefulWidget {
  const HoneView({ Key? key }) : super(key: key);

  @override
  State<HoneView> createState() => _HoneViewState();
}

class _HoneViewState extends State<HoneView> {
   @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            currentIndex = index;
            setState(() {});
            print(index);
          }, 
           currentIndex: currentIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const[
           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home '),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Watch'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Community'),
          ]
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const Text("Discovery"),
                  trailing: Wrap(
                    
                    spacing: 14,
                    children:const  [
                      Icon(Icons.settings),
                      CircleAvatar(
                        child: Text("M"),
                      )
                    ],
                  ),
                ),
              ),
                Padding(
                padding:  const EdgeInsets.all(10.0),
                child: Column(
                  children: const[
                       ContentWidgets(title: "Milsp Rar", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", image: "https://cdn.pixabay.com/photo/2022/03/27/12/46/china-7094961_960_720.jpg",),
                        ContentWidgets(title: "Bhaktey chyan", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", image: "https://cdn.pixabay.com/photo/2016/02/21/18/09/iceland-1214063_960_720.jpg",),
                         ContentWidgets(title: "Astronaut", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", image: "https://cdn.pixabay.com/photo/2017/02/08/12/46/moon-2048727_960_720.jpg",),
                          ContentWidgets(title: "Anonymous", description: "We warn the world that we are going to start fire sale and cyber attack. Thosefa;ldfj;aoeiupqiojadkjgajhdgajk.WE are Milap Group. We ARE ANONYMOUS AND WE ARE LEGION .", image: "https://cdn.pixabay.com/photo/2017/05/10/12/41/hacker-2300772_960_720.jpg",),
                           ContentWidgets(title: "Developer", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", image: "https://cdn.pixabay.com/photo/2015/12/04/14/05/code-1076536_960_720.jpg",),
                  ],
                ),
                
              )
              ],
          ),
        ),
      ),
    );
  }
}

 