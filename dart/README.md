# Background Remover API - Dart/Flutter Client

Background Remover is an image background removal API. Upload a photo or send its URL and it returns a PNG with the background made transparent, or replaced with a solid color you choose.

[![pub package](https://img.shields.io/pub/v/apiverve_backgroundremover.svg)](https://pub.dev/packages/apiverve_backgroundremover)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Background Remover API](https://apiverve.com/marketplace/backgroundremover?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_backgroundremover: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_backgroundremover/apiverve_backgroundremover.dart';

void main() async {
  final client = BackgroundremoverClient('YOUR_API_KEY');

  try {
    // This API requires a file upload — a JSON body is rejected with a 400.
    final response = await client.executeWithFile('/path/to/your-file');

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "id": "3f6c2a91-7d4e-4b8a-9c21-5e0d8b7a6f13",
    "width": 700,
    "height": 577,
    "background": "transparent",
    "foregroundRatio": 0.3778,
    "outputSize": 806519,
    "mimeType": "image/png",
    "expires": 1761000000000,
    "downloadURL": "https://storage.googleapis.com/apiverve/backgroundremover/3f6c2a91-7d4e-4b8a-9c21-5e0d8b7a6f13.png"
  },
  "code": 200
}
```

## API Reference

- **API Home:** [Background Remover API](https://apiverve.com/marketplace/backgroundremover?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/backgroundremover](https://docs.apiverve.com/ref/backgroundremover?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
