import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mood extends StatefulWidget {
  const Mood({super.key});

  @override
  State<Mood> createState() => _MoodState();
}

class _MoodState extends State<Mood> {
  List<int> list = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50.0),
                const Text('How are you feeling today ?',
                    style: TextStyle( color: Colors.black ,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 30.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Rate your mood',
                          style: TextStyle(
                            color: Colors.white ,fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        DropdownButtonFormField(
                            items: list.map<DropdownMenuItem<int>>((int value) {
                              return DropdownMenuItem<int>(
                                value: value,
                                child: Text('$value'),
                              );
                            }).toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'Please rate your mood';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              hintText: "select your mood", fillColor: Colors.white, filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.red),
                              ),
                            ),
                            onChanged: ((value) {})),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Describing how you feel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,fontWeight: FontWeight.bold ,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please input your feeling';
                        }
                        return null;
                      },
                      inputFormatters: [LengthLimitingTextInputFormatter(70)],
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        hintText: "describe your feeling",
                        fillColor: Colors.white, filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                      ),
                      minLines: 6,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

