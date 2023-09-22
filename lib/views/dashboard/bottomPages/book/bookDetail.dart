import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back, color: Colors.grey)),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            // child: Image.asset('images/share.png')
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.grey.withOpacity(0.70),
                              )),
                          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey.withOpacity(0.70))),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  'ইট দ্যাট ফ্রগ ',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'নেসার আমিন, ব্রায়ান ট্রেসি ',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Container(
                  width: width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white,
                      border: Border.fromBorderSide(BorderSide(
                        color: Colors.grey.withOpacity(0.35),
                      ))),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.04,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.orange.withOpacity(0.25),
                              border: Border.fromBorderSide(BorderSide(color: Colors.orangeAccent.withOpacity(0.45), width: 1.6))),
                          child: Center(
                              child: Text(
                            '#২ বেস্ট সেলার ',
                            style: TextStyle(fontSize: 14),
                          )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Container(
                            height: height * 0.04,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                // border: Border.fromBorderSide(BorderSide(
                                //     color: Colors.orangeAccent.withOpacity(0.45),
                                //     width: 1.6
                                // )),
                                // borderRadius: BorderRadius.all(Radius.circular(5)),
                                //   color: Colors.orange.withOpacity(0.25)
                                ),
                            child: Center(
                                child: Padding(
                              padding: EdgeInsets.only(left: width * 0.02),
                              child: Text(
                                'স্ব-উন্নয়ন',
                                style: TextStyle(fontSize: 18),
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.orangeAccent,
                    ),
                    Text(
                      '(১৪) ',
                      style: TextStyle(fontSize: 22, color: Colors.grey.shade700),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '২৯৮ ',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      '(\$0.99) ',
                      style: TextStyle(fontSize: 22, color: Colors.grey.shade700),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.3,
                  // color: Colors.cyan,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(height: height * 0.3, child: Image.asset('images/natok.png')),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: height * 0.02),
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                              color: Colors.green,
                            ),
                            child: Center(
                                child: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined, color: Colors.white.withOpacity(0.70)))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: width * 0.1,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white,
                    border: Border.fromBorderSide(BorderSide(
                      color: Colors.grey.withOpacity(0.35),
                    )),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(height: height * 0.035, child: Image.asset('images/book.png')),
                        Center(
                            child: Text(
                          'একটু পড়ুন',
                          style: TextStyle(fontSize: 18),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: width * 0.1,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.lightBlueAccent,
                    border: Border.fromBorderSide(BorderSide(
                      color: Colors.grey.withOpacity(0.35),
                    )),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(height: height * 0.035, child: Image.asset('images/book.png')),
                        Center(
                            child: Text(
                          'এখনই কিনুন',
                          style: TextStyle(fontSize: 18),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            'বইটি পড়তে সমস্যা হচ্ছে?',
            style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.08),
                child: Text(
                  'বৃত্তান্ত',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Text(
                ' (৮)',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            ' দারুন একটি গল্প এই আকুলিবিকুলি। সত্যিই মুগ্ধতায়\n ভরে গেলাম।প্রতিটা চরিত্র এতো সুন্দর করে প্রকাশ করা',
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.088),
                child: Text(
                  'দেখে স্পষ্ট বুঝতে পারল মেয়...',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
              ),
            ],
          ),
          Container(
            width: width * 0.8,
            child: ExpandableNotifier(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expandable(
                    collapsed: ExpandableButton(
                      child: Text('দআরও দেখুন', style: TextStyle(fontSize: 14, color: Colors.blue.shade600)),
                    ),
                    expanded: SingleChildScrollView(
                      child: Text(
                        'সবচেয়ে ভালো লেগেছে টিশা মেয়েটাকে।ওর সদাচরণ, শ্রদ্ধা,ভালোবাসা,অনুভূতি, সততা,গুণগুলো হৃদয়ে লাগার মতো।একজন স্বামীর প্রতি এতোটা ভালোবাসা, বিশ্বাস,ভরসা থাকতে পারে সেটা টিশাকে না দেখলে বুঝতে পারতাম না।টিশা বাচাল কন্যা হলেও ওর মন ছিলো একদম স্বচ্ছ।কিছু মানুষ আছে ভেতরে কথা রাখতে পারে না,মনের কথা মুখে বলে প্রকাশ করে আনন্দ পায় আর আমার সেরকম মানুষই খুবই পছন্দের। কারণ এরকম মানুষ সবদিক থেকেই সুবিধা পায়।কোনো ভুল পথে যেতে নিলেও কেউ না কেউ এসে সঠিকটা ধরিয়ে দেয়।ওই যে মনের কথার প্রকাশ।সেজন্য টিশাকে আমার প্রচন্ড ভালো লেগেছে'
                        ' আরেকদিকে রউফ,,ওর চরিত্রটাও ভালো লেগেছে। প্ৰথমে ওকে খুব খারাপ লেগেছিল।একটু রাগও হয়েছিল রউফের উপর।যে মানুষটা ওকে ধোকা দিলো তার জন্য এতো কিছু। ভালোবাসা বুঝি রউফকে অন্ধ করে রেখেছিল। পড়তে পড়তে একসময় ভেবেছিলাম হয়তো রউফ তার প্রথম প্রেমকেই টেনে নিবে সিদ্ধান্তহীনতার জন্য। যাক শেষমেষ সে তার সঠিক সিদ্ধান্ত নিতে পেরেছে। এটাই সবচেয়ে বড় প্রাপ্তি।তবে একসময় রউফের জন্য খারাপও লেগেছে। সিদ্ধান্তহীনতায় যে ভোগে সেই জানে এর যন্ত্রণা কি'
                        'আর তামসী,ওকে নিয়ে কিছু বলার নেই। ওর প্রতি আমার খারাপ লাগা, ভালো লাগা কোনো অনুভূতিই হয়নি।শুধু হয়েছে আফসোস।তবে হ্যা তামসীর মৃত্যুতে আমার মন সায় দেয়নি।মেয়েটা একটা বার স্বার্থহীন হয়ে দেখতো জীবনে সুখের অভাব হতো না।আত্যহত্যা সব সমস্যার সমাধান তো নয়।তবুও সেই ভুলের থেকে অনুপ্রাণিত হয়ে অনেক বড় ভুলের পথে পা বাড়ায়।এটাই সবচেয়ে বড় আফসোস।'
                        '  যাই হোক,পুরো গল্পটা পড়ে বেশ ভালো লেগেছে।টিশার আকুলিবিকুলি অনুভূতি আমাকেও আকুলিবিকুলি করে তুলেছিলো।গল্পটা পড়তে পড়তে কখন শেষ হয়ে গেল টেরই পেলাম না।মনে চাইলো আরও পড়তে।সবশেষে ',
                        style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: height * 0.055,
                width: width * 0.8,
                decoration: BoxDecoration(color: Colors.cyan.shade50, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'আরও ৭৪টি মতামত',
                      style: TextStyle(color: Colors.blue),
                    ))),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.09),
                child: Text(
                  'বৃত্তান্ত',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            ' দারুন একটি গল্প এই আকুলিবিকুলি। সত্যিই মুগ্ধতায়\n ভরে গেলাম।প্রতিটা চরিত্র এতো সুন্দর করে প্রকাশ করা',
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),
          Container(
            width: width * 0.8,
            child: ExpandableNotifier(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expandable(
                    collapsed: ExpandableButton(
                      child: Text('দআরও দেখুন', style: TextStyle(fontSize: 14, color: Colors.blue.shade600)),
                    ),
                    expanded: SingleChildScrollView(
                      child: Text(
                        'সবচেয়ে ভালো লেগেছে টিশা মেয়েটাকে।ওর সদাচরণ, শ্রদ্ধা,ভালোবাসা,অনুভূতি, সততা,গুণগুলো হৃদয়ে লাগার মতো।একজন স্বামীর প্রতি এতোটা ভালোবাসা, বিশ্বাস,ভরসা থাকতে পারে সেটা টিশাকে না দেখলে বুঝতে পারতাম না।টিশা বাচাল কন্যা হলেও ওর মন ছিলো একদম স্বচ্ছ।কিছু মানুষ আছে ভেতরে কথা রাখতে পারে না,মনের কথা মুখে বলে প্রকাশ করে আনন্দ পায় আর আমার সেরকম মানুষই খুবই পছন্দের। কারণ এরকম মানুষ সবদিক থেকেই সুবিধা পায়।কোনো ভুল পথে যেতে নিলেও কেউ না কেউ এসে সঠিকটা ধরিয়ে দেয়।ওই যে মনের কথার প্রকাশ।সেজন্য টিশাকে আমার প্রচন্ড ভালো লেগেছে'
                        ' আরেকদিকে রউফ,,ওর চরিত্রটাও ভালো লেগেছে। প্ৰথমে ওকে খুব খারাপ লেগেছিল।একটু রাগও হয়েছিল রউফের উপর।যে মানুষটা ওকে ধোকা দিলো তার জন্য এতো কিছু। ভালোবাসা বুঝি রউফকে অন্ধ করে রেখেছিল। পড়তে পড়তে একসময় ভেবেছিলাম হয়তো রউফ তার প্রথম প্রেমকেই টেনে নিবে সিদ্ধান্তহীনতার জন্য। যাক শেষমেষ সে তার সঠিক সিদ্ধান্ত নিতে পেরেছে। এটাই সবচেয়ে বড় প্রাপ্তি।তবে একসময় রউফের জন্য খারাপও লেগেছে। সিদ্ধান্তহীনতায় যে ভোগে সেই জানে এর যন্ত্রণা কি'
                        'আর তামসী,ওকে নিয়ে কিছু বলার নেই। ওর প্রতি আমার খারাপ লাগা, ভালো লাগা কোনো অনুভূতিই হয়নি।শুধু হয়েছে আফসোস।তবে হ্যা তামসীর মৃত্যুতে আমার মন সায় দেয়নি।মেয়েটা একটা বার স্বার্থহীন হয়ে দেখতো জীবনে সুখের অভাব হতো না।আত্যহত্যা সব সমস্যার সমাধান তো নয়।তবুও সেই ভুলের থেকে অনুপ্রাণিত হয়ে অনেক বড় ভুলের পথে পা বাড়ায়।এটাই সবচেয়ে বড় আফসোস।'
                        '  যাই হোক,পুরো গল্পটা পড়ে বেশ ভালো লেগেছে।টিশার আকুলিবিকুলি অনুভূতি আমাকেও আকুলিবিকুলি করে তুলেছিলো।গল্পটা পড়তে পড়তে কখন শেষ হয়ে গেল টেরই পেলাম না।মনে চাইলো আরও পড়তে।সবশেষে ',
                        style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.09),
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        'মোট ',
                        style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                      ),
                      Text(
                        'পৃষ্ঠাা',
                        style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Text(
                    '১১৬',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.1),
            child: Row(
              children: [
                Text(
                  'ভাষা ',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.13),
                  child: Text(
                    'বাংলা',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.1),
            child: Row(
              children: [
                Text(
                  'প্রকাশক  ',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.07),
                  child: Text(
                    'বইটই',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 1,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/kids story.png'),
            ),
            title: Text(' জান্নাতুল নাঈমা'),
            subtitle: Text(' ১৮১৫ জন অনুসারী'),
            trailing: Container(
              height: height * 0.055,
              width: width * 0.25,
              decoration: BoxDecoration(color: Colors.cyan.shade50, borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Text(
                    'অনুসরণ করুন',
                    style: TextStyle(color: Colors.blue, fontSize: 13),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.06),
                child: Text(
                  'এরকম আরো কিছু বইs',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.35,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: width * 0.35,
                          height: height * 0.25,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: AssetImage('images/natok.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: width * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_border_rounded,
                                color: Colors.orangeAccent,
                                size: 20,
                              ),
                              Icon(Icons.star_border_rounded, color: Colors.orangeAccent, size: 20),
                              Icon(Icons.star_border_rounded, color: Colors.orangeAccent, size: 20),
                              Icon(Icons.star_border_rounded, color: Colors.orangeAccent, size: 20),
                              Icon(Icons.star_border_rounded, color: Colors.orangeAccent, size: 20),
                              Text(
                                '(১৪) ',
                                style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'অনুসরণ করুন',
                                style: TextStyle(color: Colors.black87, fontSize: 20),
                              ),
                              Text(
                                'করুন',
                                style: TextStyle(color: Colors.black87, fontSize: 20),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
