import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/fooddata.dart';
import 'package:flutter_app_fastcall/views/food_show.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class FoodLists extends StatefulWidget {
  const FoodLists({Key? key}) : super(key: key);

  @override
  _FoodListsState createState() => _FoodListsState();
}

class _FoodListsState extends State<FoodLists> {
  //โค้ดข้อมูลร้านอาหารซึ่งเกี่ยวข้องกับไฟล์โมเดล fooddata.dart
  List<Fooddata> fooddata = [
    Fooddata(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      mobile: '1145',
      image: 'f1.jpg',
      gps: 'https://www.google.com/maps/@13.8807212,100.4967574,19.5z',
//พิกัด
    ),
    Fooddata(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      mobile: '1744',
      image: 'f2.jpg',
      gps: 'https://www.google.com/maps/place/%E0%B9%80%E0%B8%94%E0%B8%AD%E0%B8%B0%E0%B8%A1%E0%B8%AD%E0%B8%A5%E0%B8%A5%E0%B9%8C+%E0%B8%9A%E0%B8%B2%E0%B8%87%E0%B9%81%E0%B8%84/@13.7141672,100.4071321,19z',
    ),
    Fooddata(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      mobile: '1344',
      image: 'f3.jpg',
      gps: 'https://www.google.com/maps/place/S%26P+%E0%B8%9A%E0%B8%B4%E0%B9%8A%E0%B8%81%E0%B8%8B%E0%B8%B5+%E0%B9%80%E0%B8%9E%E0%B8%8A%E0%B8%A3%E0%B9%80%E0%B8%81%E0%B8%A9%E0%B8%A1+2/@13.7082623,100.3660825,17.25z',
    ),
    Fooddata(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      mobile: '1773',
      image: 'f4.jpg',
      gps: 'https://www.google.com/maps/place/Oishi+Express+Bang+Khae/@13.7063729,100.3793304,18z',
    ),
    Fooddata(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      mobile: '02-248-5555',
      image: 'f5.jpg',
      gps: 'https://www.google.com/maps/place/MK+Restaurant/@13.7091694,100.3664191,19.75z',
    ),
    Fooddata(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      mobile: '1112',
      image: 'f6.jpg',
      gps: 'https://www.google.com/maps/place/%E0%B8%9A%E0%B8%A3%E0%B8%B4%E0%B8%A9%E0%B8%B1%E0%B8%97+%E0%B8%9E%E0%B8%B4%E0%B8%8B%E0%B8%8B%E0%B9%88%E0%B8%B2/@13.712028,100.4344682,18.5z',
    ),
    Fooddata(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      mobile: '1711',
      image: 'f7.jpg',
      gps: 'https://www.google.com/maps/place/%E0%B9%81%E0%B8%A1%E0%B8%84%E0%B9%82%E0%B8%94%E0%B8%99%E0%B8%B1%E0%B8%A5%E0%B8%94%E0%B9%8C/@13.7121688,100.4326357,16.75z',
    ),
    Fooddata(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      mobile: '1150',
      image: 'f8.jpg',
      gps: 'https://www.google.com/maps/place/Pizza+Hut/@13.7085174,100.4283697,15.25z',
    ),
    Fooddata(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      mobile: '1150',
      image: 'f9.jpg',
      gps: 'https://www.google.com/maps/place/KFC/@13.7382393,100.516573,14.25z',
    ),
    Fooddata(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      mobile: '02-712-3000',
      image: 'f10.jpg',
      gps: 'https://www.google.com/maps/place/%E0%B9%80%E0%B8%88%E0%B9%80%E0%B8%88+%E0%B8%94%E0%B8%B4%E0%B8%A5%E0%B8%B4%E0%B9%80%E0%B8%A7%E0%B8%AD%E0%B8%A3%E0%B8%B5%E0%B9%88%E0%B9%80%E0%B8%8B%E0%B8%AD%E0%B8%A3%E0%B9%8C%E0%B8%A7%E0%B8%B4%E0%B8%AA/@13.7245861,100.5777629,17.25z',
    ),
    Fooddata(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      mobile: '1112',
      image: 'f11.jpg',
      gps: 'https://www.google.com/maps/place/Burger+King+-+Esso+Bangkae/@13.7085751,100.396141,16.5z',
    ),
    Fooddata(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      mobile: '02-800-8080',
      image: 'f12.jpg',
      gps: 'https://www.google.com/maps/place/%E0%B8%AA%E0%B8%B5%E0%B8%9F%E0%B9%89%E0%B8%B2+Seefah+Restaurant+%E0%B8%AA%E0%B8%B2%E0%B8%82%E0%B8%B2%E0%B8%A3%E0%B8%B2%E0%B8%8A%E0%B8%9E%E0%B8%A4%E0%B8%81%E0%B8%A9%E0%B9%8C/@13.7671657,100.4433223,21z',
    ),
    Fooddata(
      name: 'ฮองมิน',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      mobile: '02-248-0123',
      image: 'f13.jpg',
      gps: 'https://www.google.com/maps/@13.7677012,100.4064391,19.5z',
    ),
    Fooddata(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      mobile: '02-663-3888',
      image: 'f14.jpg',
      gps: 'https://www.google.com/maps/place/Yoshinoya@+Central+Plaza+Salaya/@13.7873742,100.27639,20.5z',
    ),
    Fooddata(
      name: 'ฮั่วเซ่งฮง',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      mobile: '02-2480123',
      image: 'f15.jpg',
      gps: 'https://www.google.com/maps/@13.6869709,100.3433181,20.08z',
    ),
    Fooddata(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      mobile: '02-715-8555',
      image: 'f16.jpg',
      gps: 'https://www.google.com/maps/search/scoozi+pizza/@13.7223879,100.5275676,21z',
    ),
    Fooddata(
      name: 'โดมิโน่ พิซซ่า',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      mobile: '1612',
      image: 'f17.jpg',
      gps: 'https://www.google.com/maps/@13.7059818,100.3691897,16.5z',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[400],
        title: Text(
          "สายด่วนช่วนกิน",
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
          //สร้างแต่ละรายการของ ListView
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                //กดแล้วให้เปิดไปหน้าจอ food_show.dart(FoodShow)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FoodShow(
                      name: fooddata[index].name,
                      website: fooddata[index].website,
                      facebook: fooddata[index].facebook,
                      mobile: fooddata[index].mobile,
                      image: fooddata[index].image,
                      gps: fooddata[index].gps,
                    );
                  }),
                );
              },
              //leading คืออยู่หน้า trailingคืออยู่หลัง
              leading: Image.asset('assets/images/' + fooddata[index].image),
              title: Text(fooddata[index].name),
              subtitle: Text(fooddata[index].mobile),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.deepOrange[400],
              ),
            );
          },
          //สร้างเส้นแบ่ง
          separatorBuilder: (context, index) {
            return Divider(
              height: 10,
              color: Colors.deepOrange[200],
            );
          },
          //กำหนดจำนวนรายการใน ListView
          itemCount: fooddata.length),
    );
  }
}
