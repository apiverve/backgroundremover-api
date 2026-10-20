# [Background Remover API](https://apiverve.com/marketplace/backgroundremover?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Background Remover is an image background removal API. Upload a photo or send its URL and it returns a PNG with the background made transparent, or replaced with a solid color you choose.

The Background Remover API provides a simple, reliable way to integrate background remover functionality into your applications. Built for developers who need production-ready background remover capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/backgroundremover?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/backgroundremover?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/backgroundremover)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.BackgroundRemover)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-backgroundremover/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_backgroundremover)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/backgroundremover)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_backgroundremover)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callBackgroundRemoverAPI() {
    try {
        const requestBody = {
    "url": "https://upload.wikimedia.org/wikipedia/commons/2/26/YellowLabradorLooking_new.jpg",
    "bgColor": "#ffffff"
};

        const response = await fetch('https://api.apiverve.com/v1/backgroundremover', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callBackgroundRemoverAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/backgroundremover" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -F "image=@/path/to/your-file"
# Accepted formats: .jpg, .jpeg, .png, .gif, .webp, .bmp (max 10MB)
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/backgroundremover
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/backgroundremover) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.BackgroundRemover
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.BackgroundRemover) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-backgroundremover
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-backgroundremover/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_backgroundremover
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_backgroundremover) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/backgroundremover
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/backgroundremover) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_backgroundremover
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_backgroundremover) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:backgroundremover-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/backgroundremover-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Background Remover API](https://apiverve.com/marketplace/backgroundremover?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/backgroundremover](https://docs.apiverve.com/ref/backgroundremover)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Background Remover API is commonly used for:

- **Web Applications** - Add background remover features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with background remover capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Background Remover API:

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

---

## Support & Community

- 🏠 **API Home**: [Background Remover API](https://apiverve.com/marketplace/backgroundremover?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
