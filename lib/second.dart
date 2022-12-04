import 'package:flutter/material.dart';

import 'model1.dart';

class Second_one extends StatefulWidget {
  final SmartCards card;

  const Second_one({Key? key, required this.card}) : super(key: key);

  @override
  State<Second_one> createState() => _Second_oneState();
}

class _Second_oneState extends State<Second_one> {
  int index = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 + 40,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 32),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              const Text(
                'Pay with template',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close, color: Color(0xffC8D1E1)),
              )
            ],
          ),
          const Text(
            'TEMPLATES',
            style: TextStyle(
                color: Color(0xff8A8A8A),
                fontWeight: FontWeight.w400,
                fontSize: 14),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 16),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.all(18),
                      decoration: const BoxDecoration(
                          color: Color(0xffF8F8FA),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Row(
                        children: [
                          widget.card.cardIcon,
                          const SizedBox(width: 15,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    Text( widget.card.title),
                                    Text("\$3456"),
                                  ],
                                ),
                                Text("Light"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      if(this.index == index){
                        this.index = -1;
                      }else{
                        this.index = index;
                      }

                      setState(() {});
                    },
                  );
                }),
          ),
          Container(
              margin: const EdgeInsets.only(top: 35),
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff474A56)),
                  color: index != -1 ? Colors.blue : Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(6))),
              child: Center(
                  child: Text( index != -1 ? "Continue" : "Continue without template",
                style: TextStyle(
                    color: Color(0xff474A56),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ))),
        ]),
      ),
    );
  }
}
