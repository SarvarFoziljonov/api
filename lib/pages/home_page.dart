import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:networkapi/models/post_model.dart';
import 'package:networkapi/services/http_service.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data;

  void _apiPostList() {
    Network.GET(Network.API_LIST, Network.paramsEmpty()).then((response) => {
    print(response),
      _showResponse(response),
    });

  }
  void _apiPostList1(Post post) {
    Network.GET(Network.API_LIST1+post.id.toString(), Network.paramsEmpty()).then((response) => {
      print(response),
      _showResponse(response),
    });

  }

  void _apiCreatPost(Post post) {
    Network.POST(Network.API_CREATE, Network.paramsCreate(post)).then((response) => {
      print(response),
      _showResponse(response),
    });

  }

  void _apiUpdatPost(Post post) {
    Network.PUT(Network.API_UPDATE+post.id.toString(), Network.paramsUpdate(post)).then((response) => {
      print(response),
      _showResponse(response),
    });

  }

  void _apiDeletePost(Post post) {
    Network.DEL(Network.API_DELETE+post.id.toString(), Network.paramsEmpty()).then((response) => {
      print(response),
      _showResponse(response),
    });

  }

  void _showResponse(String response) {
    setState(() {
      data = response;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // _apiPostList();
    /* var post = new Post(id: 1);
    _apiPostList1(post); */
    /* var post = new Post(name: "Sarvarbek", salary: 100, age: 31);
    _apiCreatePost(post); */
    /* var post = new Post (id: 21);
    _apiUpdatePost(post); */
     var post = new Post(id: 2);
    _apiDeletePost(post);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(data != null ? data : "No data"),

      ),
    );
  }
}
