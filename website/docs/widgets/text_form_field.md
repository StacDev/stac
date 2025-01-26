# TextFormField

The Mirai TextFormField allows you to build a Flutter TextFormField widget using JSON.
To know more about the TextFormField widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/TextFormField-class.html).

## Properties

| Property                      | Type                            | Description                                                                                                                                        |
|-------------------------------|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| id                            | `String?`                       | The identifier for the text form field.                                                                                                            |
| compareId                     | `String?`                       | The identifier to compare with another text form field.                                                                                            |
| decoration                    | `MiraiInputDecoration?`         | The decoration to show around the text form field.                                                                                                 |
| initialValue                  | `String?`                       | The initial value of the text form field.                                                                                                          |
| keyboardType                  | `MiraiTextInputType?`           | The type of keyboard to use for editing the text.                                                                                                  |
| textInputAction               | `TextInputAction?`              | The action button to use for the keyboard.                                                                                                         |
| textCapitalization            | `TextCapitalization`            | How the text should be capitalized. Defaults to `TextCapitalization.none`.                                                                         |
| style                         | `MiraiTextStyle?`               | The style to use for the text.                                                                                                                     |
| textAlign                     | `TextAlign`                     | How the text should be aligned. Defaults to `TextAlign.start`.                                                                                     |
| textAlignVertical             | `MiraiTextAlignVertical?`       | How the text should be aligned vertically.                                                                                                         |
| textDirection                 | `TextDirection?`                | The direction of the text.                                                                                                                         |
| readOnly                      | `bool`                          | Whether the text form field is read-only. Defaults to `false`.                                                                                     |
| showCursor                    | `bool?`                         | Whether to show the cursor.                                                                                                                        |
| autofocus                     | `bool`                          | Whether the text form field should focus itself if nothing else is already focused. Defaults to `false`.                                           |
| obscuringCharacter            | `String`                        | The character to use for obscuring text. Defaults to `•`.                                                                                          |
| maxLines                      | `int?`                          | The maximum number of lines for the text.                                                                                                          |
| minLines                      | `int?`                          | The minimum number of lines for the text.                                                                                                          |
| maxLength                     | `int?`                          | The maximum number of characters for the text.                                                                                                     |
| obscureText                   | `bool?`                         | Whether to obscure the text.                                                                                                                       |
| autocorrect                   | `bool`                          | Whether to enable autocorrect. Defaults to `true`.                                                                                                 |
| smartDashesType               | `SmartDashesType?`              | The type of smart dashes to use.                                                                                                                   |
| smartQuotesType               | `SmartQuotesType?`              | The type of smart quotes to use.                                                                                                                   |
| maxLengthEnforcement          | `MaxLengthEnforcement?`         | How the max length limit should be enforced.                                                                                                       |
| expands                       | `bool`                          | Whether the text form field should expand to fill its parent. Defaults to `false`.                                                                 |
| keyboardAppearance            | `Brightness?`                   | The appearance of the keyboard.                                                                                                                    |
| scrollPadding                 | `MiraiEdgeInsets`               | The amount of space by which to inset the text form field when scrolling. Defaults to `MiraiEdgeInsets(bottom: 20, top: 20, left: 20, right: 20)`. |
| restorationId                 | `String?`                       | The restoration ID to save and restore the text form field's state.                                                                                |
| enableIMEPersonalizedLearning | `bool`                          | Whether to enable personalized learning in the IME. Defaults to `true`.                                                                            |
| enableSuggestions             | `bool`                          | Whether to enable suggestions. Defaults to `true`.                                                                                                 |
| enabled                       | `bool?`                         | Whether the text form field is enabled.                                                                                                            |
| cursorWidth                   | `double`                        | The width of the cursor. Defaults to `2`.                                                                                                          |
| cursorHeight                  | `double?`                       | The height of the cursor.                                                                                                                          |
| cursorColor                   | `String?`                       | The color of the cursor.                                                                                                                           |
| hintText                      | `String?`                       | The hint text to display.                                                                                                                          |
| autovalidateMode              | `AutovalidateMode?`             | The mode to use for autovalidation.                                                                                                                |
| inputFormatters               | `List<MiraiInputFormatter>`     | The list of input formatters to apply to the text. Defaults to an empty list.                                                                      |
| validatorRules                | `List<MiraiFormFieldValidator>` | The list of validator rules to apply to the text. Defaults to an empty list.                                                                       |

## Example JSON

```json
{
  "type":  "textFormField",
  "id":  "email",
  "autovalidateMode":  "onUserInteraction",
  "validatorRules":  [
    {
      "rule":  "isEmail",
      "message":  "Please enter a valid email"
    }
  ],
  "style":  {
    "fontSize":  16,
    "fontWeight":  "w400",
    "height":  1.5
  },
  "decoration":  {
    "hintText":  "Email",
    "filled":  true,
    "fillColor":  "#FFFFFF",
    "border":  {
      "type":  "outlineInputBorder",
      "borderRadius":  8,
      "color":  "#24151D29"
    }
  }
}
```