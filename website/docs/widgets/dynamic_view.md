# Dynamic View

## Overview

The `dynamicView` widget allows you to fetch data from an API and render it using a template. This powerful feature enables dynamic content rendering based on remote data sources, making it perfect for creating data-driven UIs without writing custom code.

## Features

- Fetch data from any REST API endpoint
- Apply data to templates with placeholder syntax
- Extract nested data using dot notation and array indexing
- Handle both single objects and lists of data
- Render lists of items using the itemTemplate feature
- Customize loading and error states
- Target specific data paths within complex API responses

## Properties

| Property      | Type                | Required | Description                                                |
|---------------|---------------------|----------|------------------------------------------------------------|  
| request       | `StacNetworkRequest`  | Yes      | API request configuration (url, method, headers, etc.)     |
| template      | `Map<String, dynamic>` | Yes      | Template to render with data from the API response        |
| targetPath    | `String`              | No       | Path to extract specific data from the API response        |
| resultTarget  | `String`              | No       | Key name to use when applying data to the template        |
| loaderWidget  | `Map<String, dynamic>` | No       | Custom widget to display while loading data                |
| errorWidget   | `Map<String, dynamic>` | No       | Custom widget to display when an error occurs              |
| itemTemplate  | `Map<String, dynamic>` | No       | Template to render each item in a list of items from the API response |

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

Use double curly braces `{{placeholder}}` to insert data from the API response into your template:

- For nested data, use dot notation: `{{user.address.city}}`
- For array elements, use index notation: `{{users[0].name}}` or combined path: `{{items.0.title}}`
- For array elements within objects, use combined notation: `{{data.users[2].profile.name}}`

## Examples

### User Profile Example with Loading and Error States

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://dummyjson.com/users/1",
    "method": "get"
  },
  "loaderWidget": {
    "type": "center",
    "child": {
      "type": "column",
      "children": [
        {
          "type": "text",
          "data": "Loading..."
        },
        {
          "type": "circularProgressIndicator"
        }
      ]
    }
  },
  "errorWidget": {
    "type": "center",
    "child": {
      "type": "text",
      "data": "Error fetching user profile"
    }
  },
  "template": {
    "type": "column",
    "children": [
      {
        "type": "container",
        "padding": 16,
        "child": {
          "type": "column",
          "crossAxisAlignment": "start",
          "children": [
            {
              "type": "image",
              "src": "{{image}}",
              "width": 100,
              "height": 100
            },
            {
              "type": "text",
              "style": {
                "fontSize": 24,
                "fontWeight": "w700"
              },
              "data": "{{firstName}} {{lastName}}"
            },
            {
              "type": "sizedBox",
              "height": 8
            },
            {
              "type": "text",
              "style": {
                "fontSize": 16,
                "color": "#666666"
              },
              "data": "Email: {{email}}"
            },
            {
              "type": "text",
              "style": {
                "fontSize": 16,
                "color": "#666666"
              },
              "data": "Phone: {{phone}}"
            }
          ]
        }
      }
    ]
  }
}
```

### List Example with itemTemplate

When the API returns a list of items, use the `itemTemplate` property to define how each item should be rendered:

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
    "itemTemplate": {
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
    "type": "column",
    "children": [
      {
        "type": "text",
        "data": "Items loaded: {{length}}"
      }
    ]
  }
}
```

### Using resultTarget

The `resultTarget` property allows you to specify a key name to use when applying data to the template. This is useful when you want to reference the data with a specific name in your template:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/products",
    "method": "get"
  },
  "targetPath": "data.featured",
  "resultTarget": "product",
  "template": {
    "type": "card",
    "child": {
      "type": "column",
      "children": [
        {
          "type": "text",
          "data": "{{product.name}}"
        },
        {
          "type": "text",
          "data": "Price: ${{product.price}}"
        }
      ]
    }
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
    "type": "text",
    "data": "Data loaded successfully!"
  }
}
```

### Array Indexing in targetPath

You can access specific array elements in the targetPath:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/posts",
    "method": "get"
  },
  "targetPath": "data.posts[0]",
  "template": {
    "type": "text",
    "data": "Featured Post: {{title}}"
  }
}
```

## Best Practices

1. Use `targetPath` to extract only the data you need from complex API responses
2. For list data, always use the `itemTemplate` property to define how each item should be rendered
3. Provide custom `loaderWidget` and `errorWidget` for better user experience
4. Use `resultTarget` when you need to reference the data with a specific name in your template
5. Keep templates modular and reusable when possible

## Limitations

- API endpoints must return JSON data
- For very large datasets, consider pagination or limiting the number of items to avoid performance issues
- Complex data transformations may require custom code outside of the template system
- Nested array access in placeholder syntax is limited to the formats shown in the examples