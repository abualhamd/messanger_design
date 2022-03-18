import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
            CircleAvatar(
              radius: 25,
              foregroundImage: AssetImage('lib/images/spqr.jpg'),
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.black,
            ),
            CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ]),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(end: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Abu-Alhamd',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.006,
                ),
                Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Roma Invicta Roma Invicta Roma Invicta Roma Invicta Roma Invicta Roma Invicta Roma Invicta Roma Invicta Roma Invicta Roma Invicta Roma Invicta',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Text(
                        '. 11:48 am',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
