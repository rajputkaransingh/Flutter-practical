import 'package:flutter/material.dart';  
import 'package:resetapi/api_service.dart'; 
 
class DataScreen extends StatefulWidget { @override _DataScreenState createState() => _DataScreenState(); 
} 
 
class _DataScreenState extends State<DataScreen> {  late Future<List<Post>> posts; 
 
@override 
void initState() { super.initState(); posts = ApiService.fetchPosts(); 
} 
 
@override 
Widget build(BuildContext context) {  return Scaffold( 
appBar: AppBar( title: Text('Posts'), 
), 
body: Center( 
child: FutureBuilder<List<Post>>( future: posts, builder: (context, snapshot) { if (snapshot.hasData) {  return ListView.builder( 
itemCount: snapshot.data!.length, itemBuilder: (context, index) { 
  
 
return Card( elevation: 3, margin: EdgeInsets.all(10),  child: Padding( padding: EdgeInsets.all(10),  child: Column( 
crossAxisAlignment: CrossAxisAlignment.start,  
children: [ 
Text( 
'Post ${index + 1}:', // Add label here style: TextStyle( 
fontWeight: FontWeight.bold, fontSize: 16, 
), 
), 
SizedBox(height: 5), Text( 
snapshot.data![index].title, style: TextStyle( 
fontWeight: FontWeight.bold, fontSize: 18, 
), 
), 
SizedBox(height: 5), Text(snapshot.data![index].body), 
], 
), 
), 
); 
}, 
); 
} else if (snapshot.hasError) { return Text("${snapshot.error}"); 
} 
 
// By default, show a loading spinner. return CircularProgressIndicator(); }, 
), 
), 
); 
} 
} 
 
 
post_model.dart: 
 
class Post {  final int userId;  final int id; final String title;  final String body; 
  
Post({ 
required this.userId, required this.id, required this.title, required this.body, }); 
 
factory Post.fromJson(Map<String, dynamic> json) { return Post( 
userId: json['userId'], id: json['id'], 
title: json['title'], body: json['body'], 
); 
} 
} 
 
dev_dependencies: flutter_test: 
sdk: flutter http: ^0.13.3 
json_annotation: ^4.1.0 
flutter: sdk: flutter 
flutter_test: 
sdk: flutter 
http: ^0.13.3 
json_annotation: ^4.1.0