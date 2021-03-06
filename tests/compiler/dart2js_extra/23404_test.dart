// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Regression test for http://dartbug.com/23404/
import 'package:expect/expect.dart';

// Dart2js crashed when the global metadata had escaped characters. That
// happens, for example, when tearing off a function that uses a default
// argument containing escape characters.
foo([a='\u00a0']) => a;
bar() => '';

@NoInline()
@AssumeDynamic()
confuse(x) => x;

main() {
  Expect.equals('\u00a0', confuse(foo)());
  Expect.equals('', confuse(bar)());
}
