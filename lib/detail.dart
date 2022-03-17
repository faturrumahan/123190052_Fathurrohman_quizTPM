import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class detailPage extends StatefulWidget {
  final String name;
  final String loc;
  final String star;
  final String price;
  final String link;
  final String img_a;
  final String img_b;
  final String img_c;
  final String fac_a;
  final String fac_b;
  final String fac_c;
  final String fac_d;
  final String log_a;
  final String log_b;
  final String log_c;
  final String log_d;
  const detailPage({Key? key,
    required this.name,
    required this.loc,
    required this.star,
    required this.price,
    required this.link,
    required this.img_a,
    required this.img_b,
    required this.img_c,
    required this.fac_a,
    required this.fac_b,
    required this.fac_c,
    required this.fac_d,
    required this.log_a,
    required this.log_b,
    required this.log_c,
    required this.log_d,
  }) : super(key: key);

  @override
  _detailPageState createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                    height: 100,
                    child: Image.network(widget.img_a)
                ),
                Container(
                    width: 150,
                    height: 100,
                    child: Image.network(widget.img_b)
                ),
                Container(
                    width: 150,
                    height: 100,
                    child: Image.network(widget.img_c)
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Column(
                      children: [
                        Text(widget.name),
                        Text(widget.loc),
                        Text(widget.star),
                        Text(widget.price),
                      ],
                )),

              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(widget.log_a),
                          Text(widget.fac_a),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(widget.log_b),
                          Text(widget.fac_b),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(widget.log_c),
                          Text(widget.fac_c),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(widget.log_d),
                          Text(widget.fac_d),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            _linkButton(),
          ],
        ),
      ),
    );
  }

  Widget _linkButton(){
    return Container(
      child: ElevatedButton(
        onPressed: () => _launchURL(widget.link),
        child: Text("Website"),
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50),
        ),
      ),
    );
  }
}
