import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutix_app/main.dart';


void main() {
  testWidgets('Test tampilan menu berita', (WidgetTester tester) async {
    // Wrap widget yang akan diuji dengan MaterialApp
    await tester.pumpWidget(MaterialApp(home: MyApp()));

    // Cari teks 'Selamat datang di menu beranda!' pada tampilan widget
    final textFinder = find.text('Selamat datang ');
    expect(textFinder, findsOneWidget);
  });
}
