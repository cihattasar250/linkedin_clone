import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:linedin_clone/main.dart';

void main() {
  testWidgets('Alt menu sekmeleri dogru sayfalari acar', (tester) async {
    _ignoreNetworkImageLoadExceptions();

    await tester.pumpWidget(const Uygulamam());

    expect(find.text('Ana Sayfa'), findsOneWidget);

    await tester.tap(find.text('Bildirim'));
    await tester.pumpAndSettle();
    expect(find.text('Bahsetmeler'), findsOneWidget);
    expect(find.text('Tercihler'), findsNothing);

    await tester.tap(find.byIcon(Icons.work_outline));
    await tester.pumpAndSettle();
    expect(find.text('Tercihler'), findsOneWidget);
    expect(find.text('Bahsetmeler'), findsNothing);
  });

  testWidgets('Gonder ekranindaki kapat butonu ana sayfaya doner', (
    tester,
  ) async {
    _ignoreNetworkImageLoadExceptions();

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

void _ignoreNetworkImageLoadExceptions() {
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
}
