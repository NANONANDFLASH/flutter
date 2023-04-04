import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final _blackcolor = const Color(0xffff1f2123);
  final Offset offset;
  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackcolor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(name,
                      style: TextStyle(
                          color: isInverted ? _blackcolor : Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackcolor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackcolor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      )
                    ],
                  )
                ]),
                Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: const Offset(-5, 12),
                    child: Icon(
                      icon,
                      color: isInverted ? _blackcolor : Colors.white,
                      size: 88,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}