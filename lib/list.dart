//タイマー
import 'package:flutter/material.dart';

List<Image> timerImages = [
  Image.asset("assets/images/timer1.png"),
  Image.asset("assets/images/timer2.png"),
  Image.asset("assets/images/timer3.png"),
  Image.asset("assets/images/timer4.png"),
];

//各ジャンル画像
List<Image> reizouko = [];
List<String> kaioki = [];
List<String> kittin = ["assets/images/8.png","assets/images/3.png"];
List<String> syokutaku = [];

//名前
List<String> reizoukoTexts = [];
List<String> kaiokiTexts = [];
List<String> kittinTexts = ["こしょう","ソース"];
List<String> syokutakuTexts = [];

//期限データ
List<DateTime> reizoukolimit = [];
List<DateTime> kaiokilimit= [];
List<DateTime> kittinlimit = [];
List<DateTime> syokutakulimit = [];

//タイマーデータ
List<Image> reizoukotimer = [];
List<Image> kaiokitimer = [];
List<Image> kittintimer = [timerImages[0], timerImages[1]];
List<Image> syokutakutimer = [];

//アイコンのリスト
List<String> iconlist = [
  "assets/images/1.png",
  "assets/images/2.png",
  "assets/images/3.png",
  "assets/images/4.png",
  "assets/images/5.png",
  "assets/images/6.png",
  "assets/images/7.png",
  "assets/images/8.png",
  "assets/images/9.png",
  "assets/images/10.png",
  "assets/images/11.png",
  "assets/images/12.png",
  "assets/images/13.png"
  ];

//写真の一時保存
Image? imagesave;


