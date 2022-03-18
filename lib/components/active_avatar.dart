import 'package:flutter/material.dart';

class Active extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 10),
      child: Container(
        width: 45,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage('lib/images/spqr.jpg'),
                  radius: 20,
                ),
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.black,
                ),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Muhaammad Hassan Abu_Alhamd',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
