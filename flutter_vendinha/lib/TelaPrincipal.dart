import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Handbags"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 25),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(22, 158, 158, 158),
        ),
        child: Center(child: ConteudoTela()),
      ),
    );
  }
}

class ConteudoTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset("assets/bolsa.png"),
                  ),
                ),
                Positioned(
                  top: 200,
                  child: Icon(Icons.arrow_back_ios, color: Colors.black),
                ),
                Positioned(
                  top: 200,
                  right: 0,
                  child: Icon(Icons.arrow_forward_ios, color: Colors.black),
                ),

                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.shopping_cart, color: Colors.grey, size: 40),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Information(
                  titleBag: 'Bolsa Geométrica',
                  priceBag: 'RS 299.90',
                ),
              ),
            ),
            BarIcons(),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Description(
                TextDescription:
                    'Lorem ipsu, dolor sit amet, consectetur adipicing elit sed do eismod tempor.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Information extends StatelessWidget {
  final String titleBag;
  final String priceBag;

  const Information({Key? key, required this.titleBag, required this.priceBag})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleBag,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
            ),
            Text(priceBag, style: TextStyle(fontSize: 25, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}

class BarIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: largura * 0.9,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: Content(),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Icon(Icons.share, color: Colors.grey, size: 35),
        ),

        SizedBox(
          height: 50,
          child: VerticalDivider(color: Colors.grey, thickness: 1),
        ),
        SizedBox(
          width: largura * 0.3,
          child: Icon(Icons.mode_comment, color: Colors.grey, size: 35),
        ),
        SizedBox(
          height: 50,
          child: VerticalDivider(color: Colors.grey, thickness: 1),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Icon(Icons.favorite, color: Colors.grey, size: 35),
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  final String TextDescription;

  const Description({Key? key, required this.TextDescription})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      TextDescription,
      style: TextStyle(fontSize: 20, color: Colors.grey),
    );
  }
}
