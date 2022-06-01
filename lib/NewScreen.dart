import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioapp/LeadingIcon.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'Screens/exportScreens.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  bool isclick = false;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Welcome".text.fontWeight(FontWeight.normal).black.make(),
        centerTitle: true,
        leading: LeadingIcon().p(10),
        backgroundColor: Vx.gray200,
        actions: [
          VxCircle(
            child: Icon(
              Icons.notification_add_outlined,
              color: Vx.black,
            ),
            radius: 35,
            backgroundColor: Vx.white,
          ).p(11)
        ],
        elevation: 0.0,
      ),
      body: VxBox(
              child: VStack(
        [
          15.heightBox,
          Slidable(
            endActionPane: ActionPane(motion: DrawerMotion(), children: [
              SlidableAction(
                onPressed: null,
                backgroundColor: Vx.red400,
                icon: Icons.delete,
                label: "delete",
              ),
              SlidableAction(
                onPressed: null,
                backgroundColor: Vx.green500,
                icon: FontAwesomeIcons.share,
                label: "Share",
              )
            ]),
            child: VxBox(
                    child: VStack([
              VxBox(
                child: Card(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Vx.gray300,
                  child: ExpansionTile(
                    title: "...4060".text.bold.make(),
                    trailing: "USD".text.bold.make().px(20),
                  ),
                ),
              ).height(66).make(),
              5.heightBox,
              Text(
                "Account Balance",
                style: context.captionStyle,
              ).px(10),
              15.heightBox,
              "19056000"
                  .numCurrencyWithLocale(locale: "en_US")
                  .text
                  .xl3
                  .bold
                  .make()
                  .px(10),
              7.heightBox,
              HStack([
                Icon(
                  FontAwesomeIcons.solidCreditCard,
                  size: 20,
                  color: Colors.green[400],
                ),
                7.widthBox,
                "+120.54".text.green400.make(),
              ]).px(10),
              40.heightBox,
              HStack([
                VxBox(
                  child: HStack([
                    Icon(
                      FontAwesomeIcons.download,
                      size: 15,
                      color: Vx.white,
                    ).px(2).centered(),
                    "WithDraw".text.white.bold.make()
                  ]).centered(),
                )
                    .size(150, 50)
                    .linearGradient([
                      Vx.purple800,
                      // Colors.black.withOpacity(0.7),
                      Vx.green400
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)
                    .roundedLg
                    .make(),
                20.widthBox,
                VxBox(
                  child: HStack([
                    Icon(
                      CupertinoIcons.arrow_up_right,
                      size: 18,
                      color: Vx.white,
                    ).px(2).centered(),
                    "Load".text.white.bold.make()
                  ]).centered(),
                )
                    .size(150, 50)
                    .linearGradient([
                      Vx.purple800,
                      // Colors.black.withOpacity(0.7),
                      Vx.green400
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)
                    .roundedLg
                    .make()
              ]).px(10),
            ]).p(10))
                .size(450, 300)
                .white
                .rounded
                .makeCentered()
                .px(15),
          ),
          10.heightBox,
          ListTile(
            leading: "Assets".text.bold.xl2.black.make(),
            trailing: VxCircle(
                radius: 30,
                backgroundColor: Vx.white,
                child: FittedBox(
                  fit: BoxFit.none,
                  child: Icon(
                    CupertinoIcons.arrow_right,
                    color: Vx.black,
                    size: 20,
                  ),
                )),
          ).px(10),
          10.heightBox,
          VxBox(
                  child: VStack([
            5.heightBox,
            Slidable(
              endActionPane: ActionPane(motion: DrawerMotion(), children: [
                SlidableAction(
                  onPressed: null,
                  icon: Icons.notifications_none,
                  backgroundColor: Vx.purple800,
                ),
                SlidableAction(
                  onPressed: null,
                  icon: CupertinoIcons.delete_solid,
                  backgroundColor: Vx.red500,
                ),
              ]),
              child: ListTile(
                leading: HStack([
                  Icon(
                    Icons.credit_card,
                    color: Vx.black,
                  ),
                  4.widthBox,
                  "Card".text.bold.make(),
                  15.widthBox,
                  VxBox(
                    child: Center(
                        child: "9.9 %"
                            .text
                            .color(Vx.black.withOpacity(0.5))
                            .make()),
                  )
                      .size(35, 15)
                      .border(color: Vx.black.withOpacity(0.5))
                      .bottomRounded(value: 2)
                      .make()
                ]),
                trailing: HStack([
                  "\$187.0".text.black.bold.make(),
                  Icon(
                    CupertinoIcons.arrow_right_to_line,
                    size: 15,
                  )
                ]),
              ),
            ),
            ListTile(
              leading: HStack([
                Icon(
                  CupertinoIcons.money_dollar_circle_fill,
                  color: Vx.green500,
                ),
                4.widthBox,
                "Cash".text.bold.make(),
                15.widthBox,
                VxBox(
                  child: Center(
                      child:
                          "9.9 %".text.color(Vx.black.withOpacity(0.5)).make()),
                )
                    .size(35, 15)
                    .border(color: Vx.black.withOpacity(0.5))
                    .bottomRounded(value: 2)
                    .make()
              ]),
              trailing: HStack([
                "\$187.0".text.black.bold.make(),
                Icon(
                  CupertinoIcons.arrow_right_to_line,
                  size: 15,
                )
              ]),
            ),
            ListTile(
              leading: HStack([
                Icon(
                  CupertinoIcons.bitcoin_circle,
                  color: Vx.orange400,
                ),
                4.widthBox,
                "Crypto".text.bold.make(),
                15.widthBox,
                VxBox(
                  child: Center(
                      child:
                          "9.9 %".text.color(Vx.black.withOpacity(0.5)).make()),
                )
                    .size(35, 15)
                    .border(color: Vx.black.withOpacity(0.5))
                    .bottomRounded(value: 2)
                    .make()
              ]),
              trailing: HStack([
                "\$187.0".text.black.bold.make(),
                Icon(
                  CupertinoIcons.arrow_right_to_line,
                  size: 15,
                )
              ]),
            ),
            ListTile(
              leading: HStack([
                Icon(
                  CupertinoIcons.creditcard_fill,
                  color: Vx.red500,
                ),
                4.widthBox,
                "Card".text.bold.make(),
                15.widthBox,
                VxBox(
                  child: Center(
                      child:
                          "9.9 %".text.color(Vx.black.withOpacity(0.5)).make()),
                )
                    .size(35, 15)
                    .border(color: Vx.black.withOpacity(0.5))
                    .bottomRounded(value: 2)
                    .make()
              ]),
              trailing: HStack([
                "\$187.0".text.black.bold.make(),
                Icon(
                  CupertinoIcons.arrow_right_to_line,
                  size: 15,
                )
              ]),
            )
          ]).px(10))
              .size(450, 240)
              .white
              .rounded
              .makeCentered()
              .px(15)
        ],
      ).scrollVertical())
          .gray200
          .size(context.screenWidth, context.screenHeight)
          .make(),
      bottomNavigationBar: Material(
        color: Vx.gray200,
        child: TabBar(
          labelPadding: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          indicatorSize: TabBarIndicatorSize.label,
          controller: _controller,
          indicatorColor: Vx.black,
          automaticIndicatorColorAdjustment: true,
          tabs: [
            VxCircle(
                child: Icon(Icons.home, color: Vx.blue100),
                gradient: LinearGradient(
                    colors: [Vx.blue900, Vx.blue800],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                radius: 50),
            VxCircle(
                child: Icon(Icons.person_add_alt, color: Vx.blue100),
                gradient: LinearGradient(
                    colors: [Vx.blue900, Vx.blue800],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                radius: 50),
            VxCircle(
                child: Icon(Icons.wallet_giftcard, color: Vx.blue100),
                gradient: LinearGradient(
                    colors: [Vx.blue900, Vx.blue800],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                radius: 50),
            VxCircle(
                child: Icon(Icons.favorite, color: Vx.blue100),
                gradient: LinearGradient(
                    colors: [Vx.blue900, Vx.blue800],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                radius: 50),
          ],
        ),
      ),
    );
  }
}
