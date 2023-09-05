import 'colors.dart';
import 'package:flutter/material.dart';
import 'translatorui.dart';

class RecordUI extends StatefulWidget {
  @override
  _RecordUIState createState() => _RecordUIState();
}

class _RecordUIState extends State<RecordUI> {
  String? selectedLanguage1;
  String? selectedLanguage2;
  int _currentIndex = 0;
  int _selectedContainerIndex = -1; // Track the index of the selected container

  void onLanguageChanged1(String? value) {
    setState(() {
      selectedLanguage1 = value ?? '';
    });
  }

  void onLanguageChanged2(String? value) {
    setState(() {
      selectedLanguage2 = value ?? '';
    });
  }

  void onContainerClicked(int index) {
    setState(() {
      _selectedContainerIndex = index;
    });

    if (index == 0) {
      // Navigate to the TranslatorUI screen when the "Write" button is clicked
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TranslatorUI()),
      );
    } else if (index == 1) {
      // Navigate to the RecordUI screen when the "Record" button is clicked
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RecordUI()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Speech',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            color: AppColors.clrblack,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.clrwhite,
                  border: Border.all(color: AppColors.clrblack),
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16.0),
                      width: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.clrblack),
                        borderRadius: BorderRadius.circular(30.0),
                        color: selectedLanguage1 != null
                            ? AppColors.textclr1black
                            : AppColors.textclrwhite,
                      ),
                      child: DropdownButtonFormField<String>(
                        value: selectedLanguage1,
                        onChanged: onLanguageChanged1,
                        items: [
                          DropdownMenuItem<String>(
                            value: 'English',
                            child: Text(
                              'English',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Gujarathi',
                            child: Text(
                              'Gujarathi',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Tamil',
                            child: Text(
                              'Tamil',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Malayalam',
                            child: Text(
                              'Malayalam',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Hindi',
                            child: Text(
                              'Hindi',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Marathi',
                            child: Text(
                              'Marathi',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Telugu',
                            child: Text(
                              'Telugu',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                        ],
                        decoration: InputDecoration(
                          hintText: 'Select language',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: AppColors.clryellow,
                        ),
                        dropdownColor: AppColors.clrblack,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Your Text Here',
                      style: TextStyle(
                        color: AppColors.clrblack,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.clrwhite,
                  border: Border.all(color: AppColors.clrblack),
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16.0),
                      width: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.clrblack),
                        borderRadius: BorderRadius.circular(30.0),
                        color: selectedLanguage2 != null
                            ? AppColors.clrblack
                            : AppColors.clrwhite,
                      ),
                      child: DropdownButtonFormField<String>(
                        value: selectedLanguage2,
                        onChanged: onLanguageChanged2,
                        items: [
                          DropdownMenuItem<String>(
                            value: 'English',
                            child: Text(
                              'English',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Gujarathi',
                            child: Text(
                              'Gujarathi',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Tamil',
                            child: Text(
                              'Tamil',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Malayalam',
                            child: Text(
                              'Malayalam',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Hindi',
                            child: Text(
                              'Hindi',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Marathi',
                            child: Text(
                              'Marathi',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Telugu',
                            child: Text(
                              'Telugu',
                              style: TextStyle(
                                color: AppColors.clryellow,
                              ),
                            ),
                          ),
                        ],
                        decoration: InputDecoration(
                          hintText: 'Select language',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: AppColors.clryellow,
                        ),
                        dropdownColor: AppColors.clrblack,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Your Text Here',
                      style: TextStyle(
                        color: AppColors.clrblack,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
              SizedBox(height: 70.0),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => onContainerClicked(0),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: _selectedContainerIndex == 0
                                ? AppColors.clrblack
                                : AppColors.thricecontainer,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.create,
                                color: _selectedContainerIndex == 0
                                    ? AppColors.clrwhite
                                    : AppColors.clrblack,
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                'Write',
                                style: TextStyle(
                                  color: _selectedContainerIndex == 0
                                      ? AppColors.clrwhite
                                      : AppColors.clrblack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 60.0),
                      GestureDetector(
                        onTap: () => onContainerClicked(1),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: _selectedContainerIndex == 1
                                ? AppColors.clrblack
                                : AppColors.thricecontainer,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.album,
                                color: _selectedContainerIndex == 1
                                    ? AppColors.clrwhite
                                    : AppColors.clrblack,
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                'Record',
                                style: TextStyle(
                                  color: _selectedContainerIndex == 1
                                      ? AppColors.clrwhite
                                      : AppColors.clrblack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 60.0),
                      GestureDetector(
                        onTap: () => onContainerClicked(2),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: _selectedContainerIndex == 2
                                ? AppColors.clrblack
                                : AppColors.thricecontainer,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.qr_code_scanner,
                                color: _selectedContainerIndex == 2
                                    ? AppColors.clrwhite
                                    : AppColors.clrblack,
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                'Scan',
                                style: TextStyle(
                                  color: _selectedContainerIndex == 2
                                      ? AppColors.clrwhite
                                      : AppColors.clrblack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
