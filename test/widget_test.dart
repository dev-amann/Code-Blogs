import 'package:code_blogs/utils/strings.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:code_blogs/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(CodeBlogApp(appName: Str.appName));
  });
}
