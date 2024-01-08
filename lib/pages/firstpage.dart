import 'package:flutter/material.dart';
import 'package:lab06_126/pages/utils/hobby.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late List<Hobby> hobbies;
  List selectedItems = [];

  @override
  void initState() {
    super.initState();
    hobbies = Hobby.getHobby();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab06 CheckboxListTile"),
      ),
      body: Column(
        children: [
          const Text('งานอดิเรก'),
          Column(
            children: createCheckboxList(),
          ),
          Text(selectedItems.toString())
        ],
      ),
    );
  }

  List<Widget> createCheckboxList() {
    List<Widget> myhobbies = [];
    for (Hobby hobby in hobbies) {
      myhobbies.add(
        CheckboxListTile(
          title: Text(hobby.thaiName),
          secondary: const Icon(
            Icons.arrow_right,
            color: Colors.orange,
          ),
          value: hobby.checked,
          onChanged: (bool? value) {
            setState(() {
              // hobby.checked = value!;
              if (hobby.checked = true){
                selectedItems.add(hobby.thaiName);
              }else{
                selectedItems.remove(hobby.thaiName);
              }
            });
          },
        ),
      );
    }
    return myhobbies;
  }
}
