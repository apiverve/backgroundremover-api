# Background Remover API - Ruby Gem

Background Remover is an image background removal API. Upload a photo or send its URL and it returns a PNG with the background made transparent, or replaced with a solid color you choose.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_backgroundremover'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_backgroundremover
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_backgroundremover'

# Initialize the client
client = APIVerve::Backgroundremover::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  url: "https://upload.wikimedia.org/wikipedia/commons/2/26/YellowLabradorLooking_new.jpg",
  bgColor: "#ffffff"
})

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ url: "https://upload.wikimedia.org/wikipedia/commons/2/26/YellowLabradorLooking_new.jpg", bgColor: "#ffffff" })
  puts response["data"]
rescue APIVerve::Backgroundremover::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Backgroundremover::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Backgroundremover::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/backgroundremover?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/backgroundremover?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/backgroundremover?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
