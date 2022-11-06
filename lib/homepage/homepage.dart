import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

final descs = [
  'Member of IEEE, FUTO Chapter.',
  'Two-time Head of The Ushering and Protocol Department of the Christ Ambassadors Students Outreach (CASOR), FUTO (2016 & 2017).',
  'Organized Jumia Sales Agency business meetings within the campus and the school region at large.',
];

final skillset = [
  'Flutter.',
  'Java.',
  'Android.',
  'GIT.',
  "Familiar with Android SDK's and libraries.",
  'Leading and working in teams.',
  'Certified Fiber Optic Technician (CFOT).',
];

final interests = [
  'Started and currently run an online shirt store on Instagram (@descobee_shirts).',
  'Captain Sales Agent for Jumia Nigeria.',
  'Service and repair Xray machines.',
  'Part time photographer',
];

final expPosition = [
  'Mobile Developer',
  'Mobile Developer/Infrastructure Planner',
  'Wireline Engineer'
];

final experienceInst = [
  'Pay4Me App\nApril 2022 - Till date',
  'IPNX Nigeria\nAugust 2021 - October 2022',
  'Schlumberger Nigeria Ltd.\nAugust 2018 - December 2018 (Intern)'
];

final workExp1 = [
  'Part of the team of mobile developers that created and manage ScholarsHQ and Pay4Me Inc',
  'Involved in all version controlling and bug fixing',
  'Implemente app analytics features, to monitor the rate of app usage.'
];

final workExp2 = [
  'Tasked with collating data from design plans, compiling them into the database I created and regularly updating them for the use of staff involved in the deployment of the fibre optic networks.',
  'Part of the team that built an in-house mobile application for the task above.',
  'Stand-Up and scrum master.'
];

final workExp3 = [
  'Experience in the wellhead, open hole and cased hole activities.',
  'Completed the HSE training program organized by the firm.',
  'Experience in technincal knowledge of wireline operations.'
];

final listOfExp = [workExp1, workExp2, workExp3];

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final urls = [
    Uri.parse('https://www.facebook.com/Desco.Bee/'),
    Uri.parse('https://twitter.com/Desco_Bee'),
    Uri.parse('https://linkedin.com/in/derek-orodu'),
  ];

  bool isIconUp = false;

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Resume App'),
          backgroundColor: Colors.blueGrey[600],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/db1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Derek 'descobee' Orodu",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Center(
                                    child: IconButton(
                                  onPressed: () => _launchUrl(urls[0]),
                                  icon: SvgPicture.asset(
                                    'assets/svgs/icons8-facebook-48.svg',
                                    color: Colors.blueGrey,
                                  ),
                                )),
                              ),
                              Expanded(
                                child: Center(
                                    child: IconButton(
                                  onPressed: () => _launchUrl(urls[1]),
                                  icon: SvgPicture.asset(
                                    'assets/svgs/icons8-twitter.svg',
                                    color: Colors.blueGrey,
                                  ),
                                )),
                              ),
                              Expanded(
                                child: IconButton(
                                  onPressed: () => _launchUrl(urls[2]),
                                  icon: SvgPicture.asset(
                                    'assets/svgs/icons8-linkedin.svg',
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.phone_android,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "+234 706 181 5056",
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Colors.blueGrey[500],
                      ),
                      padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                      child: const IntrinsicHeight(
                        child: Text(
                          'I aim at building a world-class career as a mobile developer, groomed by work experiences in environments that offer exciting challenges and wonderful opportunities which will aid me in my professional growth, personal development and also provide me with a suitable job satisfaction - while I in turn contribute positively towards the goals and objectives of the said environments, as well as give back to my community.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[600],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            'About Me',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                collectionTab('Education',
                    title1: 'Federal University of Technology, Owerri (2019)',
                    institution: 'B.Eng. Electrical/Electronic Engineering',
                    desc: descs),
                collectionTab('Skills', skills: true, desc: skillset),
                collectionTab('Work Experience',
                    title1: expPosition[0],
                    institution: experienceInst[0],
                    widget: Column(
                      children: [
                        ...List.generate(expPosition.length, (index) {
                          return expandedWidget2(
                              title: expPosition[index],
                              institution: experienceInst[index],
                              desc2: listOfExp);
                        })
                      ],
                    )),
                collectionTab('Interests', skills: true, desc: interests),
                collectionTab('What I can contribute', statement: true)
              ],
            ),
          ),
        ),
      ),
    );
  }

  ExpandableNotifier collectionTab(String title,
      {String? title1,
      String? institution,
      bool skills = false,
      Widget? widget,
      bool statement = false,
      List<String>? desc}) {
    return ExpandableNotifier(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: Colors.blueGrey[600],
        ),
        child: ScrollOnExpand(
          child: ExpandablePanel(
            theme: const ExpandableThemeData(
              iconColor: Colors.white,
              iconPadding: EdgeInsets.fromLTRB(0, 15, 10, 0),
              tapBodyToExpand: true,
            ),
            header: Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.blueGrey[600],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            collapsed: skills
                ? Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.blueGrey[500],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('•',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30)),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text('${desc![0]}..',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                : statement
                    ? Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.blueGrey[500],
                        ),
                        child: const Text(
                            'I am highly skilled in turning UI designs into actual mobile application UI with little opportunity for bugs. I am also good in state management using a technology called Riverpod that allows you manipulate and store the state of your values and application in general. This is key in applications that will require the use of endpoints',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                            textAlign: TextAlign.justify,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis),
                      )
                    : collapsedWidget1(
                        title: title1 ?? "", institution: institution ?? ""),
            expanded: widget ??
                (statement
                    ? Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.blueGrey[500],
                        ),
                        child: const Text(
                          'I am highly skilled in turning UI designs into actual mobile application UI, with little opportunity for bugs. I am also good in state management using a technology called Riverpod that allows you manipulate and store the state of your values and application in general. This is key in applications that will require the use of endpoints',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          textAlign: TextAlign.justify,
                          softWrap: true,
                        ),
                      )
                    : expandedWidget2(
                        title: title1 ?? "",
                        institution: institution ?? "",
                        desc: desc!,
                        skill: skills)),
          ),
        ),
      ),
    );
  }

  Container collapsedWidget1(
      {required String title, required String institution}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.blueGrey[500],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '$institution...',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Container expandedWidget2({
    required String title,
    required String institution,
    List<String>? desc,
    List<List<String>>? desc2,
    bool skill = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.blueGrey[500],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (skill)
            Container()
          else
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          if (skill)
            Container()
          else
            Text(
              institution,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(desc2 == null ? desc!.length : desc2.length,
              (index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('•',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30)),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                          desc2 == null ? desc![index] : desc2[index][index],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
