import 'package:flutter/material.dart';
import '../service/service_method.dart';
import './category/left_nav.dart';
import './category/right_top.dart';
// json
import 'dart:convert';


class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品分类"),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            LeftCatgegoryNav(),
            Column(
              children: <Widget>[
                  RightCategory(),
                  CategoryGoodsList()
                ],
            )
          ],
        ),
      ),
    );
  }
}

// 商品列表
class CategoryGoodsList extends StatefulWidget {
  @override
  _CategoryGoodsListState createState() => _CategoryGoodsListState();
}

class _CategoryGoodsListState extends State<CategoryGoodsList> {
  @override
  void initState() {
    super.initState();
    _getGoodsLIst();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("xxx"),
    );
  }
  void _getGoodsLIst() async{
    var data={
      'categoryId':'4',
      'categorySubId':'',
      'page':1
    };
    await request('getMallGoods',formData: data).then((val){
      var data=json.decode(val.toString());
      print("商品列表-----------${data}");
    });
  }


}

