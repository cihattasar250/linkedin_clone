import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:linedin_clone/main.dart';

void main() {
  testWidgets('Alt menü sekmeleri doğru sayfaları açar', (tester) async {
    await tester.pumpWidget(const Uygulamam());

    expect(find.text('Ana Sayfa'), findsOneWidget);

    await tester.tap(find.text('Bildirim'));
    await tester.pumpAndSettle();
    expect(find.text('Bildirim Sayfası'), findsOneWidget);
    expect(find.text('İş Sayfası'), findsNothing);

    await tester.tap(find.text('İş'));
    await tester.pumpAndSettle();
    expect(find.text('İş Sayfası'), findsOneWidget);
    expect(find.text('Bildirim Sayfası'), findsNothing);
  });

  testWidgets('Gonder ekranindaki kapat butonu ana sayfaya doner', (
    tester,
  ) async {
    final previousOnError = FlutterError.onError;
    FlutterError.onError = (details) {
      if (details.exception is NetworkImageLoadException) {
        return;
      }

      previousOnError?.call(details);
    };
    addTearDown(() {
      FlutterError.onError = previousOnError;
    });

    await tester.pumpWidget(const Uygulamam());

    await tester.tap(find.byIcon(Icons.add_box_outlined));
    await tester.pumpAndSettle();

    expect(find.text('Postala'), findsOneWidget);
    expect(find.text('Ana Sayfa'), findsNothing);

    await tester.tap(find.byIcon(Icons.close));
    await tester.pumpAndSettle();

    expect(find.text('Postala'), findsNothing);
    expect(find.text('Ana Sayfa'), findsOneWidget);
    expect(find.text('Arama yap'), findsOneWidget);
  });
}
