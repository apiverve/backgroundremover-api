# Background Remover API - PHP Package

Background Remover is an image background removal API. Upload a photo or send its URL and it returns a PNG with the background made transparent, or replaced with a solid color you choose.

## Installation

Install via Composer:

```bash
composer require apiverve/backgroundremover
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Backgroundremover\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'url' => 'https://upload.wikimedia.org/wikipedia/commons/2/26/YellowLabradorLooking_new.jpg',
    'bgColor' => '#ffffff'
]);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Backgroundremover\Client;
use APIVerve\Backgroundremover\Exceptions\APIException;
use APIVerve\Backgroundremover\Exceptions\ValidationException;

try {
    $response = $client->execute(['url' => 'https://upload.wikimedia.org/wikipedia/commons/2/26/YellowLabradorLooking_new.jpg', 'bgColor' => '#ffffff']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/backgroundremover?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/backgroundremover?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/backgroundremover?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
