import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uni_links/uni_links.dart';

class DeepLinkingUrl extends StatefulWidget {
  const DeepLinkingUrl({Key? key}) : super(key: key);

  @override
  _DeepLinkingUrlState createState() => _DeepLinkingUrlState();
}

class _DeepLinkingUrlState extends State<DeepLinkingUrl> {

  Future<String?>? initialLink() async {
    try {
      final initialLink = await getInitialLink();
      print("initialLink: $initialLink");
      return initialLink;
    } on PlatformException catch (exception){
      print(exception.message);
    }
  }
  String? deepLinkURL = "";

  @override
  void initState() {
    initialLink()!.then((value) => setState(() {
      deepLinkURL = value;
      print("deepLink :$deepLinkURL");
      print("value :$value");
    }));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(deepLinkURL == null?"":deepLinkURL!),
            ],
          ),
        ),
      ),
    );
  }
}
