import 'package:flutter/material.dart';
import 'package:flutter_booksindynamiclistview/main.dart';

class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  TextEditingController title=TextEditingController();
  TextEditingController desc=TextEditingController();
  TextEditingController author=TextEditingController();
  TextEditingController price=TextEditingController();
  var booknames=[];
  var descri=[];
  var aut=[];
  var pri=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20.0,top: 80.0,right: 20.0),
            decoration: BoxDecoration(
                color: Color(0xffEF629F)),
//                gradient: LinearGradient(
//                    begin: Alignment.centerLeft,
//                    end: Alignment.centerRight,
//                    colors:[Color(0xffEECDA3),Color(0xffEF629F)])
//              ),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(MyApp())));
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    SizedBox(width: 100,),
                    Text("Books",style:TextStyle(
                        fontSize: 30
                    ))
                  ],
                ),
                SizedBox(height: 20,),
                Container(

                  decoration: BoxDecoration(
                      color: Color(0xffEECDA3),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child:   TextField(

                    controller: title,

                    decoration: InputDecoration(

                        hintText: "Enter Book Name",

                        prefixIcon: Icon(Icons.keyboard),

                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10)

                        )

                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffEECDA3),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: TextField(
                    controller: desc,
                    decoration: InputDecoration(
                        hintText: "Enter Book Description",

                        prefixIcon: Icon(Icons.keyboard),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffEECDA3),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: TextField(

                    controller: author,

                    decoration: InputDecoration(

                        hintText: "Enter Author Name",

                        prefixIcon: Icon(Icons.keyboard),

                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10)

                        )

                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Container(

                  decoration: BoxDecoration(
                      color: Color(0xffEECDA3),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child:   TextField(

                    controller: price,

                    decoration: InputDecoration(

                        hintText: "Enter Price",

                        prefixIcon: Icon(Icons.keyboard),

                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10)

                        )

                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        booknames.add(title.text);
                        descri.add(desc.text);
                        aut.add(author.text);
                        pri.add(price.text);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffEECDA3),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      height: 50,
                      width: 100,

                      child: Center(child: Text("ADD")),
                    ),
                  ),
                ),

                ListView.builder(
                    shrinkWrap: true,
                    itemCount: booknames.length==null?0:booknames.length,
                    itemBuilder: (context,index){
                      return Card(
                        color: Color(0xffEECDA3),
                        child: ListTile(
                          leading: Icon(Icons.library_books),
                          trailing: GestureDetector(
                              onTap: (){
                                setState(() {
                                  booknames.removeAt(index);
                                });
                              },
                              child: Icon(Icons.delete)),
                          title: Text("Book :"+booknames[index],style: TextStyle(
                              color: Colors.green
                          ),),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Description :"+descri[index],style: TextStyle(
                                  color: Colors.red
                              ),),
                              Text("Author :"+aut[index],style: TextStyle(
                                  color: Colors.red
                              )),
                              Text("Price :"+pri[index],style: TextStyle(
                                  color: Colors.red))

                            ],
                          ),

                        ),
                      );
                    })

              ],
            ),
          ),
        ),
      ),

    );

  }
}
