
<!-- begin snippet: js hide: false console: true babel: false -->

<!-- language: lang-js -->

    else if(snapshot.hasData ){     
                  return ListView.builder (             
                  
                  itemCount: snapshot.data.length, //length of snapshot data
                  itemBuilder: (BuildContext ctxt, int index) {              
                  return Container(                             
                      child:Column(                    
                        children: <Widget>[                       
                          (index == 0)?
                            new Container(
                               //margin: EdgeInsets.all(30.0),
                               padding: EdgeInsets.all(10.0),
                               child:Column(
                               children: <Widget>[ 
                              //Padding(padding:),
                              new Text('Всего штрафов:  ${violQnt['total_qnt']}'), 
                              new Text('Подтвержденные штрафы:  ${violQnt['approved_qnt']}'), 
                              new Text('Оплачено:  ${violQnt['paid_qnt']}'), 
                              new Text('В процессе проверки:  ${violQnt['process_qnt']}'), 
                            ]
                            ),
                            )
                            
                          : new Container(),

                                    
                         
                         
                          
                            
                            Row(       
                               mainAxisAlignment: MainAxisAlignment.center,              
                              children: <Widget>[                                      
                              //SizedBox(height: 100), 
                              SizedBox(
                                //width: 70,
                                child:Text (
                                  'Адрес:',
                                  style: TextStyle(
                                  color: Hexcolor("#005395"),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSansBold',
                                  ),
                                  ),
                                ),            
                              SizedBox(
                                //width: 70,
                                child:Text (
                                  ' ${data[index]['VLocation']}',
                                  style: TextStyle(
                                  color: Hexcolor("#005395"),
                                    fontSize: 12.0,
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSansBold',
                                  ),
                                  ),
                                ),        
                                
                              ],
                            ),
                            Row(       
                               mainAxisAlignment: MainAxisAlignment.center,            
                              children: <Widget>[                                      
                              //SizedBox(height: 100), 
                              SizedBox(
                                
                                //width: 70,
                                child:Text (
                                  'Дата:',
                                  style: TextStyle(
                                  color: Hexcolor("#005395"),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSansBold',
                                  ),
                                  ),
                                ),            
                              SizedBox(
                                //width: 70,
                                child:Text (
                                  ' ${data[index]['VTime']}',
                                  style: TextStyle(
                                  color: Hexcolor("#07528e"),
                                    fontSize: 12.0,
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSansBold',
                                  ),
                                  ),
                                ),        
                                
                              ],
                            ),
                          new Container(
                            height: 28.0,
                             decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide( //                    <--- top side
                                  color: Colors.black,
                                  width: 3.0,
                                ),)
                            ),
                          ),    
                          ],
                      ),
                  );
                }
            );       
              }else if(!snapshot.hasData){
                return new Center(child: CircularProgressIndicator(),);
              }

<!-- end snippet -->


