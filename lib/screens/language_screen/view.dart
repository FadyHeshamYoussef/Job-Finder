import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class EditLanguageView extends StatefulWidget {
  const EditLanguageView({Key? key}) : super(key: key);

  @override
  State<EditLanguageView> createState() => _EditLanguageViewState();

}
String? _selectedLanguage;
final List<Map<String, dynamic>> languages = [
  {'name': 'England', 'flag': "assets/images/England.png"},
  {'name': 'Indonesia', 'flag': "assets/images/Indonesia.png"},
  {'name': 'Saudi Arabia', 'flag': "assets/images/Saudi Arabia.png"},
  {'name': 'China', 'flag': "assets/images/China.png"},
  {'name': 'Netherlands', 'flag': "assets/images/Netherlands.png"},
  {'name': 'France', 'flag': "assets/images/France.png"},
  {'name': 'Germany', 'flag': "assets/images/Germany.png"},
  {'name': 'Japan', 'flag': "assets/images/Japan.png"},
  {'name': 'South Korea', 'flag': "assets/images/South Korea.png"},
  {'name': 'Portugal', 'flag': "assets/images/Portugal.png"},
];



class _EditLanguageViewState extends State<EditLanguageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              title: Text(
                "Language",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111827),
                ),
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xff111827),
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 655.h,
              child: ListView.separated(
                itemCount: languages.length,
                separatorBuilder: (context, index) => Divider(
                  thickness: 1.sp,
                  endIndent: 20,
                  indent: 20,
                  color: Color(0xffD1D5DB),
                ),
                itemBuilder: (context, index) {
                  final language = languages[index];
                  return ListTile(
                    leading: Image.asset(
                      language['flag'],
                      fit: BoxFit.scaleDown,
                      height: 20.h,
                      width: 30.w,
                    ),
                    title: Text(
                      language['name'],
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                      ),
                    ),
                    trailing: Radio(
                      value: language['name'],
                      groupValue: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        _selectedLanguage = language['name'];
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



