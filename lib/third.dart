import 'package:flutter/material.dart';

class Third_one extends StatelessWidget {
  const Third_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 26, vertical: 32),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(right: 24.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  const Text(
                    'Pay with template',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close,
                        color: Color(0xffC8D1E1)),
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
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 210,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (index, context) {

                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(15),
                        height: 66,
                        width: 335,
                        decoration: BoxDecoration(
                            color: const Color(0xffF8F8FA),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(6)),
                            border: index == 0 ?
                            Border.all(
                                color:
                                const Color(0xff334D8F)):
                            Border.all(color:
                            Colors.transparent)
                        ),

                        child: Row(
                          children: [
                            const Icon(
                              Icons.flash_on,
                              color: Colors.yellow,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(
                                  left: 18.0),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: const [
                                  Text(
                                    "Light",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight:
                                        FontWeight.w500,
                                        color: Color(
                                            0xff474A56)),
                                  ),
                                  Text(
                                    "Mastercard **** 3241",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight:
                                        FontWeight.w400,
                                        color: Color(
                                            0xff8A8A8A)),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              '\$108.00',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight:
                                  FontWeight.w500,
                                  color: Color(0xff474A56)),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const Spacer(),
              Container(
                  margin: const EdgeInsets.only(top: 35),
                  height: 50,
                  width: 375,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(6)),
                      color: Color(0xff334D8F)),
                  child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ))),
            ]),
      ),
    );
  }
}
