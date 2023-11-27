import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("WhatsApp", style: TextStyle(color: Colors.white),),
            bottom: TabBar(tabs:
            [
              Tab(
                child:  Icon(Icons.camera_alt, color: Colors.white,),
              ),
              Tab(
                  child:  Text("CHATS", style: TextStyle(color: Colors.white),),
              ),
              Tab(
                  child:  Text("STATUS", style: TextStyle(color: Colors.white)),
              ),
              Tab(
                  child:  Text("CALLS", style: TextStyle(color: Colors.white)),
              )

            ]
            ),
            actions: [
              Icon(Icons.search, color: Colors.white,),
              SizedBox(width: 10,),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_rounded, color: Colors.white,),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        value: 1,
                        child: Text("New Group")
                    ),
                    PopupMenuItem(
                        value: 1,
                        child: Text("Settings")
                    ),
                    PopupMenuItem(
                        value: 1,
                        child: Text("Block")
                    ),
                    PopupMenuItem(
                        value: 1,
                        child: Text("Logout")
                    ),


                  ],
              ),
              SizedBox(width: 10,)
            ],
          ),
          body: TabBarView(
            children: [
              Text("hello1"),
              //chats screen start,
              ListView.builder(
                itemCount: 50,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Anish Kumar"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/anish_image.gif"),
                      ),
                      subtitle: Text("How are you?"),
                      trailing: Text("6:26 PM"),
                    );
                  },
              ),
              //chats screen end,

              //status screen start
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/anish_kumar.gif"),
                    ),
                    title: Text("My Status", style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Tap to add status update"),
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[400],
                    child: Text("Viewed updates", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  ),
                  ListView.builder(
                    itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 2
                              )
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/anish_kumar.gif"),
                            ),
                          ),
                          title: Text("Anish Kumar", style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text("15 Minutes ago"),
                        );
                      },
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[400],
                    child: Text("Muted updates", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  ),
                  ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/anish_kumar.gif"),
                        ),
                        title: Text("Anish Kumar", style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text("15 Minutes ago"),
                      );
                    },
                  )
                ],
              ),

              //status screen end

              //calls screen start
              ListView.builder(
                itemCount: 50,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/anish_kumar.gif"),
                      ),
                      title: Text("Anish Kumar", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Row(
                        children: [
                          Icon(Icons.outbond_outlined,size: 20, color: Colors.teal,),
                          SizedBox(width: 10,),
                          Text("December 6, 12:36")
                        ],
                      ),
                      trailing: Icon(index.isEven ? Icons.phone : Icons.video_call, color: Colors.teal,),
                    );
                  },
              ),
              //calls screen end
            ],
          ),
        )
    );
  }
}
