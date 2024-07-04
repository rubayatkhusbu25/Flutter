import 'package:flutter/material.dart';

class AdvanceAlert extends StatefulWidget {
  const AdvanceAlert({super.key});

  @override
  State<AdvanceAlert> createState() => _AdvanceAlertState();
}

class _AdvanceAlertState extends State<AdvanceAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advanced AlertDialog"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _showAdvancedAD(context);

          },
          child: Text("Show Advanced AlertDialog"),
        ),
      ),
    );
  }
}

void _showAdvancedAD (BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return Dialog(
          backgroundColor:Colors.cyan,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Container(

                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Text("Data Is Entered Successfully!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Times New Roman"),),
                      SizedBox(height: 5,),
                      Text("data",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Times New Roman"),),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pop();

                      },
                          child: Text("okay",style: TextStyle(color: Colors.cyan),))
                    ],
                  ),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: Icon(Icons.account_balance_wallet_outlined,size: 40, color: Colors.cyan,),
              ),
              top: -50,),
            ],
          ),
        );

      });
}
