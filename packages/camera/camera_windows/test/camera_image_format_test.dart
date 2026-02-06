// Copyright 2013 The Flutter Authors
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:typed_data';

import 'package:camera_platform_interface/camera_platform_interface.dart';
import 'package:camera_windows/camera_windows.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('cameraImageFromPlatformData maps kCVPixelFormatType_32BGRA to bgra8888', () {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{
      'format': 1111970369,
      'height': 100,
      'width': 100,
      'planes': <dynamic>[
        <dynamic, dynamic>{
          'bytes': Uint8List(0),
          'bytesPerRow': 400,
        },
      ],
    };

    final CameraImageData image = cameraImageFromPlatformData(data);
    expect(image.format.group, ImageFormatGroup.bgra8888);
  });
}
