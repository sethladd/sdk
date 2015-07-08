* `dart:io`
  * Added two new file modes, `WRITE_ONLY` and `WRITE_ONLY_APPEND` for
    opening a file write only.
    [eaeecf2](https://github.com/dart-lang/sdk/commit/eaeecf2ed13ba6c7fbfd653c3c592974a7120960)

### Tool changes

* Pub

  * Pub will now generate a ".packages" file in addition to the "packages"
    directory when running `pub get` or similar operations, per the
    [package spec proposal][]. Pub now has a `--no-package-symlinks` flag that
    will stop "packages" directories from being generated at all.

  * When `pub publish` finds a violation, it will emit a non-zero exit code.

  * `pub run` starts up faster for executables that don't import transformed
    code.

[package spec proposal]: https://github.com/lrhn/dep-pkgspec

## 1.11.1

### Tool changes

* Pub will always load Dart SDK assets from the SDK whose `pub` executable was
  run, even if a `DART_SDK` environment variable is set.

## 1.11.0 - 2015-06-25
    [r45198](https://github.com/dart-lang/sdk/commit/5a79c03)
  * `Isolate.spawnUri` added a named argument `checked`.
  [r45003](https://github.com/dart-lang/sdk/commit/8b8223d),
  [r45153](https://github.com/dart-lang/sdk/commit/8a5d049),
  [r45189](https://github.com/dart-lang/sdk/commit/3c39ad2)