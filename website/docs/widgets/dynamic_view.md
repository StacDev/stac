# Dynamic View

## Overview

The `dynamicView` widget allows you to fetch data from an API and render it using a template. This powerful feature enables dynamic content rendering based on remote data sources, making it perfect for creating data-driven UIs without writing custom code.

## Features

- Fetch data from any REST API endpoint
- Apply data to templates with placeholder syntax
- Extract nested data using dot notation
- Handle both single objects and lists of data
- Render lists of items using the ItemTemplate feature

## Properties

| Property    | Type                | Required | Description                                                |
|-------------|---------------------|----------|------------------------------------------------------------|
| request     | `StacNetworkRequest`  | Yes      | API request configuration (url, method, headers, etc.)     |
| template    | `Map<String, dynamic>` | Yes      | Template to render with data from the API response        |
| targetPath  | `String`              | No       | Path to extract specific data from the API response        |
| ItemTemplate | `Map<String, dynamic>` | No       | Template to render each item in a list of items from the API response |

## Basic Usage

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/user/1",
    "method": "get"
  },
  "template": {
    "type": "text",
    "data": "Hello, {{name}}!"
  }
}
```

## Data Placeholders

Use double curly braces `{{placeholder}}` to insert data from the API response into your template. For nested data, use dot notation: `{{user.address.city}}`.

## Examples

### User Profile Example

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://dummyjson.com/users/1",
    "method": "get"
  },
  "template": {
    "type": "column",
    "children": [
      {
        "type": "image",
        "src": "{{image}}",
        "width": 100,
        "height": 100
      },
      {
        "type": "text",
        "data": "{{firstName}} {{lastName}}"
      },
      {
        "type": "text",
        "data": "Email: {{email}}"
      }
    ]
  }
}
```

### List Example with ItemTemplate


When the API returns a list of items, use the `ItemTemplate` property to define how each item should be rendered:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://dummyjson.com/users",
    "method": "get"
  },
  "targetPath": "users",
  "template": {
    "type": "listView",
    "ItemTemplate": {
      "type": "listTile",
      "title": {
        "type": "text",
        "data": "{{firstName}} {{lastName}}"
      },
      "subtitle": {
        "type": "text",
        "data": "{{email}}"
      },
      "leading": {
        "type": "circleAvatar",
        "backgroundImage": "{{image}}"
      }
    }
  }
}
```

## Advanced Usage

### Extracting Nested Data

Use the `targetPath` property to extract specific data from complex API responses:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/data",
    "method": "get"
  },
  "targetPath": "response.data.items",
  "template": {
    // Template definition
  }
}
```

### Custom Headers

Add custom headers to your API requests:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/protected-resource",
    "method": "get",
    "headers": {
      "Authorization": "Bearer your-token-here",
      "Content-Type": "application/json"
    }
  },
  "template": {
    // Template definition
  }
}
```

## Best Practices

1. Use `targetPath` to extract only the data you need from complex API responses
2. For list data, always use the `ItemTemplate` property to define how each item should be rendered
3. Keep templates modular and reusable when possible
4. Use appropriate error handling in your UI design for cases when the API request fails

## Implementation Details

The `dynamicView` widget uses the `StacDynamicViewParser` to fetch data from APIs and apply it to templates. The parser handles different response data types and supports nested data extraction via the `targetPath` property.

When processing list data, each item in the list gets its own independent copy of the template, ensuring that placeholders are correctly replaced with the corresponding data for each item.

## Limitations

- API endpoints must return JSON data
- For very large datasets, consider pagination or limiting the number of items to avoid performance issues
- Complex data transformations may require custom code outside of the template system