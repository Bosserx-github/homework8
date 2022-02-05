import 'package:flutter/material.dart';
import 'package:homework8/calculate.dart';
import 'package:homework8/random.dart';

class PasswordnumberPage extends StatefulWidget {
  //static const buttonSize = 60.0;

  const PasswordnumberPage({Key? key}) : super(key: key);

  @override
  State<PasswordnumberPage> createState() => _PasswordnumberPage();
}

class _PasswordnumberPage extends State<PasswordnumberPage> {
  var r = randoms();
  var count = 0;
  String _numinput = '';
  String _input = 'ทายเลข 1 ถึง 100';

  @override
  Widget build(BuildContext context) {

    var calculate = calculates(r.answers);
    var ramdoms = r.answers.toString();
    print('correct number: ' + ramdoms.toString());

    /*return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_outlined,
                    size: 70.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8.0),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'กรุณาใส่รหัสผ่าน',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),*/
    return Scaffold(
      appBar: AppBar(title: Text('GUESS THE NUMBER')),
      body: Container(
        margin: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            border: Border.all(
              width: 10,
              color: Color(0xF50F7CDB),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Color(0xF57FA0FA).withOpacity(1.0),
                offset: const Offset(8.0, 5.0),
                blurRadius: 7.0,
                spreadRadius: 3.0,
              ),
            ]),
        child: Container(
          color: Color(0xF542D7D3),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/guess_logo.png',
                        width: 150.0,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'GUESS',
                                style: TextStyle(
                                    fontSize: 60.0, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'THE NUMBER',
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$_numinput',
                    style: TextStyle(fontSize: 50.0, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$_input',
                    style: TextStyle(fontSize: 25.0, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //child: Text(_input, style: TextStyle(fontSize: 20.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 1; i <= 3; i++) buildButton(num: i),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 4; i <= 6; i++) buildButton(num: i),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 7; i <= 9; i++) buildButton(num: i),
                    ], //7-9
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                            onPressed: () {
                              print('close');
                              setState(() {
                                _numinput = _numinput.substring(0, 0);
                              });
                            },
                            child: Icon(
                              Icons.close, // รูปไอคอน
                              size: 25.0,
                            )),
                      ),
                      buildButton(num: 0),
                      /*Container(
      child: Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          _buildButton(1),
          _buildButton(2),
           _buildButton(3),
          ],
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          _buildButton(4),
          _buildButton(5),
          _buildButton(6),
          ],
        ),
           Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
           _buildButton(7),
           _buildButton(8),
           _buildButton(9),
           ],
        ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            width: PasswordnumberPage.buttonSize,
            height: PasswordnumberPage.buttonSize,
            ),
        ),
            _buildButton(0),
            _buildButton(-1),
             ],
        ),*/

                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: OutlinedButton(
                            onPressed: () {
                              print('backspace');
                              setState(() {
                                _numinput = _numinput.substring(
                                    0, _numinput.length - 1);
                              });
                            },
                            child: Icon(
                              Icons.backspace_outlined,
                              // รูปไอคอน
                              size: 25.0,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      onPressed: () {
                        ///////
                        var guess = int.tryParse(_numinput);
                              if (guess == null) {
                          setState(() {
                            _input = 'กรุณาใส่ตัวเลข';
                            _numinput = _numinput.substring(0, 0);
                          });
                          print(
                              "กรอกข้อมูลไม่ถูกต้อง ให้กรอกเฉพาะตัวเลขเท่านั้น");
                        } else {
                          var result = calculate.doGuess(guess);
                              if (result == 1) {
                            setState(() {
                              _input = '$guess : มากเกินไป กรุณาลองใหม่';
                              _numinput = _numinput.substring(0, 0);
                            });
                            print('$guess มากเกินไป กรุณาลองใหม่!');
                            count++;
                               } else if (result == -1) {
                            setState(() {
                              _input = '$guess : น้อยเกินไป กรุณาลองใหม่';
                              _numinput = _numinput.substring(0, 0);
                            });
                            print('$guess น้อยเกินไป กรุณาลองใหม่');
                            count++;
                               } else if (result == 0) {
                            setState(() {
                              count ++;
                              _input =
                                  'ถูกต้องแล้วครับ 🎉 คุณทายทั้งหมด $count ครั้ง';
                            });
                            print(
                                '$guess ถูกต้องแล้วครับ \n คุยทายทั้งหมด $count ครั้ง');
                          }
                        }
                      },
                      child: Text(
                        'GUESS',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                ),

                /*TextButton(
    onPressed: () {
    print('Forgot password');
    },
    child: Text('ลืมรหัสผ่าน',style: TextStyle(
    fontWeight: FontWeight.bold,fontSize: 20.0, color: Colors.black)),
    )*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton({int? num}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: OutlinedButton(
          onPressed: () {
            setState(() {
              _numinput = ' $_numinput$num';
            });
          },
          child: Text('$num',
              style: TextStyle(fontSize: 25.0, color: Colors.black))
          /*borderRadius: BorderRadius.circular(PasswordnumberPage.buttonSize / 2),
        child: Container(
          decoration: (num == -1)
              ? null
              : BoxDecoration(
            border: Border.all(width: 2.0),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          width: PasswordnumberPage.buttonSize,
          height: PasswordnumberPage.buttonSize,
          // conditional operator (?:)
          child: (num == -1) ? Icon(Icons.backspace) : Text('$num'),
        ),*/
          ),
    );
  }
}
