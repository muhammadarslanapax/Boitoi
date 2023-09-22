import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/widgets/cText2.dart';
import 'package:flutter/material.dart';


class TileGrid extends StatelessWidget {
  final String path;

  final Function() ontap;

  final String ? text;

  const TileGrid({
    super.key,
    required this.path,
    required this.ontap, this.text, 
  });

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
     final height = MediaQuery.of(context).size.height;
    
    
    return InkWell(
      onTap: ontap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 1,
              shadowColor: red,
              child: Container(
                decoration: BoxDecoration(color: red, borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    
                    path,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            
          ),
      
           Expanded(child: cText2(text: text??"",color: black,size:width*0.033 ,fontWeight: bold,))
      
        ],
      ),
    );
  }
}
