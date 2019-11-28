import 'package:flutter/material.dart';
import 'package:fworkout/pages/Sicronizados.dart';
import 'Aspirantes.dart';
import 'reg_aspirante.dart';

class MiPaginaPrincipal extends StatelessWidget {
 const MiPaginaPrincipal({Key key}) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar:AppBar(
 title: Text('Noticias'),
 backgroundColor: Colors.blueGrey,
 ),
 drawer: Drawer(
 child:ListView(
 children: <Widget>[


 UserAccountsDrawerHeader(
 decoration: BoxDecoration(color: Colors.blueGrey),
 currentAccountPicture:
 CircleAvatar(
 backgroundImage: NetworkImage('http://images4.fanpop.com/image/photos/19700000/Naruto-Uzumaki-uzumaki-naruto-shippuuden-19785887-1280-720.jpg'),
 ),
 accountEmail: Text('Naruto_el_chidori@konoha.com'),

 accountName: Text('Naruto Uzumaki'),
 ),
 ListTile(
 title:Text('Agregar Aspirante'),
 leading: Icon(Icons.star_half, color: Colors.blueGrey),
 onTap: () {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistroAsp()),
              
    );
 }
 ),
 ListTile(
 title:Text('Sicronizados'),
 leading: Icon(Icons.subdirectory_arrow_left, color: Colors.blueGrey),
 onTap: () {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Sic()),
              
    );
 }
 ),

 ListTile(
 title:Text('No Sicronizados'),
 leading: Icon(Icons.swap_horizontal_circle, color: Colors.blueGrey)

 ),
 
 ListTile(
 title:Text('Cerrar Sesión'),
 leading: Icon(Icons.exit_to_app, color: Colors.blueGrey),
 onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
                Navigator.pop(context);
              },
 ),

 ]
 )
 ),
 body:
 Container(
padding: EdgeInsets.symmetric(horizontal: 30), 
child: Column(
children: <Widget>[
Padding(
padding: EdgeInsets.only(top: 30), 
child:Image.network('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a9c3f701-f08b-4500-a3ef-8a548d833cfe/daal8dy-79ab3840-cf74-47f9-8cd7-f19649cbd16a.png/v1/fill/w_1600,h_1641,q_75,strp/ipn_burrificado_by_dilvereye-daal8dy.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwic3ViIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl0sIm9iaiI6W1t7InBhdGgiOiIvZi9hOWMzZjcwMS1mMDhiLTQ1MDAtYTNlZi04YTU0OGQ4MzNjZmUvZGFhbDhkeS03OWFiMzg0MC1jZjc0LTQ3ZjktOGNkNy1mMTk2NDljYmQxNmEucG5nIiwid2lkdGgiOiI8PTE2MDAiLCJoZWlnaHQiOiI8PTE2NDEifV1dfQ.ScRW6QwgkwsVEYT2ktOjwFJssq7lqBqM4v_DCLwTXnM'),
),
Padding(
padding: EdgeInsets.only(top: 1), 
child: Text('¡¡BIENVENIDO USUARIO!!', style: TextStyle(height: 2,fontSize: 25,fontWeight:FontWeight.bold),),
)
],


)


 )
 );
 }
}
