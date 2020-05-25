import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class chatbookApp extends StatefulWidget {
  @override
  _chatbookAppState createState() => _chatbookAppState();
}

class _chatbookAppState extends State<chatbookApp> {
  var text = "Text";
  var shartext = "ShareText";
  var typeuser = "Celebrity";
  var img = "Image";
  var sharimg = "ShareImage";
  var vid = "Video";

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery
        .of(context)
        .size;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Container(
                width: deviceSize.width * 0.1,
                height: deviceSize.height * 0.1,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("asets/modi.jpg"),
                  ),
                ),
              ),
            ),
            centerTitle: true,
            title: Text('ChatBook'),
            backgroundColor: Colors.pink,
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  onPressed: () {})
            ],
          ),
          bottomNavigationBar: new BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    size: 30.0,
                    color: Colors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
                    size: 30.0,
                    color: Colors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star_border,
                    size: 30.0,
                    color: Colors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_enhance,
                    size: 30.0,
                    color: Colors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle,
                    size: 30.0,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage(
                            "asets/modi.jpg",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage(
                            "asets/amit.jpg",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage(
                            "asets/nitin.jpg",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage(
                            "asets/yogi.jpg",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage(
                            "asets/trump.jpg",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage(
                            "asets/rupani.jpg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Card(
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: <Widget>[
                        new Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage(
                                  "asets/trump.jpg",
                                )),
                          ),
                        ),
                        new SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'Donald Trump',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Image.asset(
                                  "asets/verify.png",
                                  height: 15,
                                  width: 15,
                                )
                              ],
                            ),
                            SizedBox(height: 1.0),
                            Text(
                              'India has done great job.',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 3.0),
                            Text(
                              'Today 10.08 am',
                              style: TextStyle(
                                  fontSize: 7.0, color: Colors.black),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                        new Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60.0),
                            child: Icon(Icons.chat, color: Colors.pink)),
                      ],
                    ),
                  ),
                ),
                new FutureBuilder<List<Post>>(
                  future: fetchPosts(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Post> posts = snapshot.data;
                      return new Column(
                          children: posts
                              .map((post) =>
                          new Column(
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 5.0, 8.0, 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            new Container(
                                              height: 40.0,
                                              width: 40.0,
                                              decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.black,
                                                  width: 1.0,
                                                ),
                                                image: new DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: new AssetImage(
                                                        "asets/modi.jpg")),
                                              ),
                                            ),
                                            new SizedBox(
                                              width: 10.0,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'Narendra Modi',
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight
                                                              .bold),
                                                    ),
                                                    SizedBox(
                                                      width: 10.0,
                                                    ),
                                                    if (post.usertype ==
                                                        typeuser)
                                                      Image.asset(
                                                        "asets/verify.png",
                                                        height: 15,
                                                        width: 15,
                                                      )
                                                  ],
                                                ),
                                                SizedBox(height: 3.0),
                                                Text(
                                                  'narendra_modi@123',
                                                  style: TextStyle(
                                                      fontSize: 8.0,
                                                      color: Colors.grey),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        new Padding(
                                          padding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 6.0),
                                          child: Text("${post.time}",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 8.0)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (post.feedtype == img ||
                                      post.feedtype == sharimg)
                                    Container(
                                      child: new Image.network(
                                        "http://new.comnet.com.sg/TechTest/1.0/Feed/Feedimg?ImageName=${post
                                            .feedvalue}",
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  else
                                    if (post.feedtype == text ||
                                        post.feedtype == shartext)
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: new Text(
                                              "${post.feedvalue}",
                                              textAlign: TextAlign.justify,
                                            ),
                                          ))
                                    else
                                      Container(
                                        child: Column(
                                          children: <Widget>[
                                            new Image.network(
                                              "http://new.comnet.com.sg/TechTest/1.0/Feed/Feedimg?ImageName=${post
                                                  .video}",
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0),
                                              child: Row(
                                                children: <Widget>[
                                                  IconButton(
                                                    icon: Icon(
                                                      Icons.play_circle_filled,
                                                    ),
                                                    iconSize: 40,
                                                    color: Colors.black,
                                                    splashColor: Colors.grey,
                                                    onPressed: () {},
                                                  ),
                                                  SizedBox(width: 3.0),
                                                  Text("Play a Video"),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            new Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 28.0,
                                            ),
                                            new SizedBox(
                                              width: 16.0,
                                            ),
                                            new Icon(Icons.delete_outline,
                                                size: 28.0),
                                            new SizedBox(
                                              width: 16.0,
                                            ),
                                            new Icon(Icons.save_alt,
                                                size: 28.0),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ))
                              .toList());
                    } else if (snapshot.hasError) {
                      return Text('Connect to the Internet',
                          textAlign: TextAlign.center);
                    }
                    return new Center(
                      child: new Column(
                        children: <Widget>[
                          new Padding(padding: new EdgeInsets.all(50.0)),
                          new CircularProgressIndicator(),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

Future<List<Post>> fetchPosts() async {
  Map<String, String> aheaders = {
    'Content-Type': 'application/json; charset=utf-8',
  };
  final msg = jsonEncode({
    "UserID": "800",
    "PageNo": "1",
    "PageSize": "20",
  });
  http.Response response = await http.post(
      'http://new.comnet.com.sg/TechTest/1.0/Feed/HomepageFeedList',
      headers: aheaders,
      body: msg);
  var responseJson = json.decode(response.body);
  return (responseJson["FeedList"] as List)
      .map((p) => Post.fromJson(p))
      .toList();
}

class Post {
  final String feedvalue, feedtype, video, time, usertype;

  Post({this.video, this.feedvalue, this.usertype, this.feedtype, this.time});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      usertype: json['UserType'].toString(),
      feedtype: json['FeedType'].toString(),
      time: json['FeedUpdatedDate'].toString(),
      feedvalue: json['FeedValue'].toString(),
      video: json['VideoThumbImg'].toString(),
    );
  }
}
