import 'package:flutter/material.dart';
class Drawerapp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture:CircleAvatar(child:Icon(Icons.person,)),
              accountName: Text(":التسجيل ب",style: TextStyle(fontSize: 18,
                  color: Colors.white),
              ),
              accountEmail: Text("Aya Mk",style: TextStyle(fontSize: 18,
                  color: Colors.white),)),
          ListTile(
            onTap: (){},
            title: Text("تواصل معنا",style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.person_pin_rounded,color: Colors.blue,),
          ),
          ListTile(
            onTap: (){},
            title: Text("مشاركة التطبيق ",style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.share,color: Colors.blue),
          ),
          ListTile(
            onTap: (){},
            title: Text("المعلومات الشخصية ",style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.person,color: Colors.blue),
          ),
          ListTile(
            onTap: (){},
            title: Text("سياسة الخصوصية ",style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.person_search,color: Colors.blue),
          ),
          ListTile(
            onTap: (){},
            title: Text("عناوين الاستلام",style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.location_on,color: Colors.blue),
          ),
          ListTile(
            onTap: (){},
            title: Text("تسجيل خروح",style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.output,color: Colors.red,),
          ),
        ],
      ),);
  }
}