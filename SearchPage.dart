import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery/search_details/SearchDetails.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchPage extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //title: Text("Photo Bay"),
      //   centerTitle: true,
      // ),
      backgroundColor: Hexcolor("#ffffff"),
      body: ListView(

        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
         
          SizedBox(height: 100), 
          Container(
            constraints: BoxConstraints.tightFor(width: 200.0, height: 200.0),
            
            child: Image.asset(
              "assets/images/photobay.png",
              width: 350.0,
              fit: BoxFit.scaleDown,
            )),
            
          ListTile(            
            title: TextFormField(              
              controller: searchController,
              decoration: InputDecoration(               
                hintText: "Кот, собака, машина, природа",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Hexcolor('#1a1a1a'),
                  fontFamily: 'GothamMedium'
                  ),
                labelText: "Искать фото",
                contentPadding:
                const EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 20.0),
                prefixIcon: const Icon(Icons.search, color: Colors.blueGrey,),               
                suffixStyle: const TextStyle(color: Colors.white),
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), 
                  borderSide: BorderSide(color: Hexcolor("#ffffff"))                 
                ),    
               
                
              ),
            ),
          ),
          Container(
            //constraints: BoxConstraints.tightFor(width: 100.0),
            width: 100,
            padding: EdgeInsets.only(left: 120.0,right:120.0,top:20.0),            
            child: RaisedButton(       
                //width: 100.0,
                onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SearchDetails(searchController.text.trim().replaceAll(" ", "+"))));
                },
                child: Text(
                  "поиск",
                  style: TextStyle(
                    color: Hexcolor('#1a1a1a'),
                    fontSize: 22.0,
                    fontFamily: 'GothamLight'
                    ),
                ),
                
                color:Hexcolor('#fec625'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
          )
        ],
      ),
    );
  }
}
