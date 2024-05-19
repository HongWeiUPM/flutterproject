import 'package:flutter/material.dart';
import 'pages/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  int __factoryIndex = 0;
  bool _inviteUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text((__factoryIndex == 0) ? 'Factory 1' : 'Factory 2'),
        centerTitle: true,
        leading: SizedBox(
            width: 56,
            child: ((_inviteUser)
                ? IconButton(
                    onPressed: () => inviteUserPressed(),
                    icon: const Icon(Icons.arrow_back),
                  )
                : const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_back),
                    color: Colors.transparent,
                  ))),
        actions: const [
          SizedBox(
            width: 56,
            child: IconButton(
              onPressed: null,
              icon: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: (!_inviteUser)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Top Half (Left)
                _selectedIndex == 1
                    ? Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Factory Label
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                __factoryIndex == 0
                                    ? '1549.7 kW'
                                    : '⚠ABCD1234 IS UNREACHABLE!',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // Dashboard (Assumed as GridView for simplicity)
                            // Dashboard (Assumed as GridView for simplicity)
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  // Dashboard (GridView)
                                  Expanded(
                                    child: GridView.count(
                                      crossAxisCount: 2,
                                      children: [
                                        Card(
                                          elevation: 4,
                                          margin: const EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Steam Pressure',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              IconButton(
                                                  onPressed: null,
                                                  icon: Icon(Icons.speed,
                                                      color:
                                                          (__factoryIndex == 0)
                                                              ? Colors.green
                                                              : Colors.black)),
                                              Text(
                                                (__factoryIndex == 0)
                                                    ? '34.19 bar'
                                                    : '0.0 bar',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Card(
                                          elevation: 4,
                                          margin: const EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Steam Flow',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.speed,
                                                    color: (__factoryIndex == 0)
                                                        ? Colors.red
                                                        : Colors.black),
                                              ),
                                              Text(
                                                (__factoryIndex == 0)
                                                    ? '22.82 T/H'
                                                    : '0.0 T/H',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Card(
                                          elevation: 4,
                                          margin: const EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Water Level',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.speed,
                                                    color: (__factoryIndex == 0)
                                                        ? Colors.green
                                                        : Colors.black),
                                              ),
                                              Text(
                                                (__factoryIndex == 0)
                                                    ? '55.41%'
                                                    : '0.0%',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Card(
                                          elevation: 4,
                                          margin: const EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Power Frequency',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.speed,
                                                    color: (__factoryIndex == 0)
                                                        ? Colors.green
                                                        : Colors.black),
                                              ),
                                              Text(
                                                (__factoryIndex == 0)
                                                    ? '50.08 Hz'
                                                    : '0.0 Hz',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Timestamp Label (Column)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Timestamp: ${DateTime.now().toString()}',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // Timestamp Label
                          ],
                        ),
                      )
                    : _selectedIndex == 0
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height * 0.65,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              margin: const EdgeInsets.all(6),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 150,
                                    width: double.infinity,
                                    child: Card(
                                      margin: EdgeInsetsDirectional.only(
                                        top: 20,
                                        bottom: 20,
                                        end: 10,
                                        start: 10,
                                      ),
                                      color: Colors.white,
                                      elevation: 4,
                                      child: SizedBox(
                                        height: 80,
                                        child: Text(
                                          '\n\tBen \n\u2022 +60109219938',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 150,
                                    width: double.infinity,
                                    child: Card(
                                      margin: EdgeInsetsDirectional.only(
                                        top: 20,
                                        bottom: 20,
                                        end: 10,
                                        start: 10,
                                      ),
                                      color: Colors.white,
                                      elevation: 4,
                                      child: SizedBox(
                                        height: 80,
                                        child: Text(
                                          '\n\tTesting 1 \n\u2022 +601234567891',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 150,
                                    width: double.infinity,
                                    child: Card(
                                      margin: EdgeInsetsDirectional.only(
                                        top: 20,
                                        bottom: 20,
                                        end: 10,
                                        start: 10,
                                      ),
                                      color: Colors.white,
                                      elevation: 4,
                                      child: SizedBox(
                                        height: 80,
                                        child: Text(
                                          '\n\tHello \n\u2022 +601023456789',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    margin: const EdgeInsetsDirectional.only(
                                        end: 10),
                                    child: FloatingActionButton(
                                      onPressed: () => inviteUserPressed(),
                                      child: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : (_selectedIndex == 2)
                            ? SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.65,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Minimum threshold\t",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Icon(
                                            Icons.info_outline,
                                          ),
                                          IconButton(
                                            onPressed: null,
                                            icon: Icon(
                                              Icons.edit,
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: GridView.count(
                                          crossAxisCount: 2,
                                          children: [
                                            Column(
                                              children: [
                                                const Text(
                                                  "\nSteam\nPressure",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0), // Adjust the value to change the oval shape
                                                    color: Colors.grey[
                                                        200], // Adjust the color as needed
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              horizontal: 20.0),
                                                      labelText: '29 Bar',
                                                      labelStyle:
                                                          const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  "\nSteam\nFlow",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0), // Adjust the value to change the oval shape
                                                    color: Colors.grey[
                                                        200], // Adjust the color as needed
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              horizontal: 20.0),
                                                      labelText: '22 T/H',
                                                      labelStyle:
                                                          const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  "\nWater\nLevel",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0), // Adjust the value to change the oval shape
                                                    color: Colors.grey[
                                                        200], // Adjust the color as needed
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              horizontal: 20.0),
                                                      labelText: '53 %',
                                                      labelStyle:
                                                          const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  "\nPower\nFrequency",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0), // Adjust the value to change the oval shape
                                                    color: Colors.grey[
                                                        200], // Adjust the color as needed
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              horizontal: 20.0),
                                                      labelText: '48 Hz',
                                                      labelStyle:
                                                          const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : const SizedBox(),

                // Factory Buttons
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Handle onTap event
                                changeFactoryIndex(
                                    0); // Change the index accordingly
                              },
                              child: SizedBox(
                                width: 200,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.factory),
                                      ),
                                      const Text(
                                        'Factory 1',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle onTap event
                                changeFactoryIndex(
                                    1); // Change the index accordingly
                              },
                              child: SizedBox(
                                width: 200,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.factory),
                                      ),
                                      const Text(
                                        'Factory 2',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle onTap event
                                null; // Change the index accordingly
                              },
                              child: SizedBox(
                                width: 200,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.factory),
                                      ),
                                      const Text(
                                        'Factory 3',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle onTap event
                                null; // Change the index accordingly
                              },
                              child: SizedBox(
                                width: 200,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.factory),
                                      ),
                                      const Text(
                                        'Factory 4',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle onTap event
                                null; // Change the index accordingly
                              },
                              child: SizedBox(
                                width: 200,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.factory),
                                      ),
                                      const Text(
                                        'Factory 5',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Bottom Navigation Bar
                BottomNavigationBar(
                  currentIndex: _selectedIndex,
                  onTap: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                    print(_selectedIndex);
                  },
                  items: const [
                    BottomNavigationBarItem(
                      label: "",
                      icon: Icon(Icons.account_circle),
                    ),
                    BottomNavigationBarItem(
                      label: "",
                      icon: Icon(Icons.home),
                    ),
                    BottomNavigationBarItem(
                      label: "",
                      icon: Icon(Icons.settings),
                    ),
                  ],
                ),
              ],
            )
          : SizedBox(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        "Invitation",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        "Invite Users",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "\nOwner's Name\n",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      child: const TextField(
                        decoration: InputDecoration(
                            labelText: 'Name', border: OutlineInputBorder()),
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "\nOwner's Phone Number\n",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.4,
                              child: Image.asset(
                                'icons/flags/png100px/my.png',
                                package: 'country_icons',
                              ),
                            ),
                            const Text(
                              "+60\t",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Your Phone Number',
                                  border: OutlineInputBorder()),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(top: 10),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () => inviteUserPressed(),
                      child: const Text("Submit"),
                    ),
                  )
                ],
              ),
            ),

      // Right Half (Missing Sensor Readings for Factory 1)
      // endDrawer: Drawer(
      //   child: Container(
      //     color: Colors.grey[200],
      //     child: const Center(
      //       child: Text(
      //         'Missing Sensor Readings for Factory 1',
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  changeFactoryIndex(index) {
    setState(() {
      index == 0 ? __factoryIndex = 0 : __factoryIndex = 1;
      print(_inviteUser);
    });
  }

  inviteUserPressed() {
    setState(() {
      _inviteUser = !_inviteUser;
    });
  }
}

class FactoryButton extends StatelessWidget {
  final String name;
  final IconData iconData; // Change the type to IconData

  const FactoryButton({super.key, required this.name, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(iconData), // Create Icon widget with iconData
            const SizedBox(width: 8), // Add some spacing between icon and text
            Text(name),
          ],
        ),
      ),
    );
  }
}

class SensorReadingCard extends StatelessWidget {
  const SensorReadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sensor Reading',
            style: TextStyle(fontSize: 18),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.speed))
        ],
      ),
    );
  }
}
