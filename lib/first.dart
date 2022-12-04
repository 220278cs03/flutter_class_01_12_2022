import 'package:flutter/material.dart';

import 'model1.dart';
import 'second.dart';

class First_one extends StatelessWidget {
  First_one({Key? key}) : super(key: key);

  List <SmartCards> list = [
    SmartCards(
        const Icon(
          Icons.flash_on,
          color: Colors.yellow,
        ),
        "light"),
    SmartCards(
        const Icon(
          Icons.local_fire_department,
          color: Colors.red,
        ),
        "gaz"),
    SmartCards(
        const Icon(
          Icons.water_drop,
          color: Colors.blue,
        ),
        "water")
  ];
  SmartCards other = SmartCards(const Icon(Icons.wallet), "Increase balance");
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2 + 40,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 26, vertical: 32),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Choose communal type',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close,
                        color: Color(0xffC8D1E1)),
                  )
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              const Text(
                'SMART CARDS',
                style: TextStyle(
                    color: Color(0xff8A8A8A),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: list.length,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xffF8F8FA),
                              borderRadius:
                              BorderRadius.all(
                                  Radius.circular(6))),
                          padding: const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 15),
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              list[index].cardIcon,
                              SizedBox(
                                width: 20,
                              ),
                              Text(list[index].title),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                        onTap: (){
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Second_one(card: list[index],);
                              });
                        },
                      );
                    }),
              ),
              const Text(
                'OTHER',
                style: TextStyle(
                    color: Color(0xff8A8A8A),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              InkWell(
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 15),
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: const BoxDecoration(
                        color: Color(0xffF8F8FA),
                        borderRadius: BorderRadius.all(
                            Radius.circular(6))),
                    child: Row(
                      children: [
                        other.cardIcon,
                        SizedBox(
                          width: 20,
                        ),
                        Text(other.title),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    )),
                onTap: (){},
              ),
            ]),
      ),
    );
  }
}
