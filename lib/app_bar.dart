import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/flutter.png'),
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 8),
                Text('TODO App', style: TextStyle(fontFamily: "Poppins"),),
              ],
            ),
            centerTitle: true,
           actions:  [
             InkWell(
               splashColor: const Color.fromARGB(255, 134, 174, 213),
               onTap: (){
                  showModalBottomSheet(
                    backgroundColor: Colors.blue,
                    context: context, builder: (context){
                    return Container();
                  });
               },
               child: Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add, color: const Color.fromARGB(255, 5, 45, 105),)),
             ),
           ],
            // backgroundColor: Colors.blue[800],
          );
  }

}