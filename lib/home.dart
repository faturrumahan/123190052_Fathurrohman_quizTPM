import 'package:flutter/material.dart';
import 'detail.dart';
import 'data_hotel.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Hotel"),
      ),
      body: Container(
        child: cardList(),
      ),
    );
  }

  Widget cardList() {
    return ListView.builder(
        itemBuilder: (context, index){
          final DataHotel list = hotelList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return detailPage(
                  name: list.name,
                  loc: list.location,
                  star: list.stars,
                  price: list.roomPrice,
                  link: list.websiteLink,
                  img_a: list.imageUrl[0],
                  img_b: list.imageUrl[1],
                  img_c: list.imageUrl[2],
                  fac_a: list.facility[0],
                  log_a: list.iconFacility[0],
                  fac_b: list.facility[1],
                  log_b: list.iconFacility[1],
                  fac_c: list.facility[2],
                  log_c: list.iconFacility[2],
                  fac_d: list.facility[3],
                  log_d: list.iconFacility[3],
                );
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Container(
                    width: 120,
                    child: Image.network(list.imageUrl[0]),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(list.name),
                      Text("Rating - " + list.stars + " Stars"),
                      Text(list.roomPrice + "/Night"),
                    ],
                  )
                ],
              ),
            ),
          );
        }, itemCount: hotelList.length, );
  }
}
