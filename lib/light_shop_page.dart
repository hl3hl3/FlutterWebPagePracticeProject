import 'package:flutter/material.dart';

class LightShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: isMobile ? _mobilePage(context) : _desktopPage(context),
      ),
    );
  }

  Widget _mobilePage(BuildContext context) {
    var themedText = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text(
            '小流浪專區',
            style: themedText.headline,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Image.network(
          'https://liteshop.tw/product_photos/BsYhKBpjPz2gN2PwMBsPcqft1569237379.jpg',
        ),
        _infoArea(context),
        _description(context),
        _footer(context),
        _buyButtons(context),
      ],
    );
  }

  Widget _desktopPage(BuildContext context) {
    double imgWidth = MediaQuery.of(context).size.width / 2;
    var themedText = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text(
            '小流浪專區',
            style: themedText.headline,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: <Widget>[
            Image.network(
              'https://liteshop.tw/product_photos/BsYhKBpjPz2gN2PwMBsPcqft1569237379.jpg',
              width: imgWidth,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  _infoArea(context),
                  _buyButtons(context),
                ],
              ),
            ),
          ],
        ),
        _description(context),
        _footer(context),
      ],
    );
  }

  Widget _buyButtons(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            color: Colors.orange,
            textColor: Colors.white,
            child: Text('立即購買'),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: FlatButton(
            color: Colors.grey.shade100,
            disabledTextColor: Colors.grey.shade400,
            disabledColor: Colors.grey.shade100,
            textColor: Colors.black,
            child: Text('結帳'),
          ),
        ),
      ],
    );
  }

  Widget _infoArea(BuildContext context) {
    var themedText = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '9/27 (五) 一事製菓小流浪 @ 捷運徐匯中學站 Exit 2',
            style: themedText.headline,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'NT\$',
                style: themedText.body1.apply(
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(width: 4),
              Text(
                '435 - 920',
                style: themedText.headline.apply(
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          Text(
            '請選擇',
            style: themedText.subhead.apply(
              color: Colors.lightBlue,
            ),
          ),
          Wrap(
            children: <Widget>[
              _chip('6" 不能再完美的檸檬塔'),
              _chip('6" 南法鄉村 栗子塔'),
              _chip('6" 靜岡柚子抹茶塔'),
              _chip('6" 檸檬塔 + 6" 抹茶塔'),
              _chip('6" 檸檬塔 + 6" 栗子塔'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chip(String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: RaisedButton(
        elevation: 0,
        child: Text(label),
        onPressed: () {},
      ),
    );
  }

  Padding _description(BuildContext context) {
    var themedText = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '商品介紹',
            style: themedText.title,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            '＃小流浪\n\n'
            '每次在不同的捷運站\n'
            '為期一個小時\n'
            'pm 6:30 - 7:30\n'
            '提著一盞提燈當作暗號\n'
            '只販售知道我們並且已經預訂的朋友。\n\n'
            '「讓大家不用運費且更方便吃到我們用心製作的甜點。」\n',
            style: themedText.subhead.apply(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _footer(BuildContext context) {
    var themedText = Theme.of(context).textTheme;
    return Container(
      color: Colors.grey.shade200,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              '@小流浪專區, All Rights Reserved.',
              style: themedText.body1.apply(color: Colors.grey.shade700),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '快速開店就找 - ',
                style: themedText.body1.apply(color: Colors.grey.shade700),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Title Message!'),
                          content: Text('Content Message!'),
                        );
                      });
                },
                child: Text(
                  'LiteShop 輕電商',
                  style: themedText.body1.apply(color: Colors.grey.shade700),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
