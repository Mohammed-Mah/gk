import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Child Protection App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReportScreen(),
    );
  }
}

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إنشاء بلاغ جديد'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'الموقع'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'تاريخ الحادث'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'وصف موجز للواقعة'),
              maxLines: 3,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'معلومات عن المتحرش'),
            ),
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem(
                  value: 'ابتزاز تحرش فقط',
                  child: Text('ابتزاز تحرش فقط'),
                ),
                DropdownMenuItem(
                  value: 'تحرش وابتزاز',
                  child: Text('تحرش وابتزاز'),
                ),
                DropdownMenuItem(
                  value: 'تحرش جنسي',
                  child: Text('تحرش جنسي'),
                ),
                DropdownMenuItem(
                  value: 'تحرش لفظي',
                  child: Text('تحرش لفظي'),
                ),
              ],
              onChanged: (String? value) {
                // اختر نوع الحالة
              },
              decoration: InputDecoration(labelText: 'نوع الحالة'),
            ),
            ElevatedButton(
              onPressed: () {
                // إرسال التقرير
              },
              child: Text('إرسال البلاغ'),
            ),
          ],
        ),
      ),
    );
  }
}

