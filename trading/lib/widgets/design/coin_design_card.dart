import 'package:flutter/material.dart';

class CoindDesignCard extends StatefulWidget {
  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double changePorcentage;

  CoindDesignCard({
    super.key,
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePorcentage,
  });

  @override
  State<CoindDesignCard> createState() => _CoindDesignCardState();
}

class _CoindDesignCardState extends State<CoindDesignCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 201, 103, 12),
              offset: Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Color.fromARGB(255, 201, 103, 12),
              offset: Offset(-4, -4),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.network(widget.imageUrl),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        widget.name,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      widget.symbol,
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.price.toDouble().toString(),
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.change.toDouble() < 0
                        ? widget.change.toDouble().toString()
                        : '+${widget.change.toDouble()}',
                    style: TextStyle(
                      color: widget.change.toDouble() < 0
                          ? Colors.red
                          : Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.changePorcentage.toDouble() < 0
                        ? '${widget.changePorcentage.toDouble()}%'
                        : '+${widget.changePorcentage.toDouble()}%',
                    style: TextStyle(
                      color: widget.changePorcentage.toDouble() < 0
                          ? Colors.red
                          : Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
