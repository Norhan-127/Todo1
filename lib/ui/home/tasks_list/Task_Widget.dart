import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.15,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Theme.of(context).primaryColor,
              width: MediaQuery.of(context).size.width*0.3,
              height: MediaQuery.of(context).size.height*.09,
            ),
          ),
          Spacer(flex: 3,),
          Expanded(
            flex: 78,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Basket Ball',style: Theme.of(context).textTheme.subtitle1,),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.timer,size: MediaQuery.of(context).size.width*.05,),
                    SizedBox(width: 3,),
                    Text('10:30 am',style: Theme.of(context).textTheme.bodyText1,),
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Expanded(
            flex:18,
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).primaryColor,
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
