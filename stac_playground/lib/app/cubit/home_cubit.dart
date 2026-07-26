import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stac_playground/app/cubit/home_state.dart';
import 'package:stac_playground/data/component_entries.dart';
import 'package:stac_playground/data/playground_entry.dart';

/// Superset of playground screens and gallery components.
final List<PlaygroundEntry> playgroundEntries = [
  const PlaygroundEntry(
    id: 'hello_stac',
    title: 'Hello Stac',
    description: 'Welcome screen introducing the Stac SDUI framework',
    json: helloStacSample,
    dartCode: helloStacDartCode,
    icon: 'waving_hand',
  ),
  const PlaygroundEntry(
    id: 'form_screen',
    title: 'Form Screen',
    description: 'Sign-in form with validation, fields and actions',
    json: formSample,
    dartCode: formDartCode,
    icon: 'login',
  ),
  ...componentEntries,
];

/// Rebuilds [json] as a plain `Map<String, dynamic>` tree.
///
/// The inline samples ([helloStacSample], [formSample]) are `const` map
/// literals, so on the web (and VM) their nested maps are typed
/// `<dynamic, dynamic>` — Stac's generated `fromJson` does
/// `json['child'] as Map<String, dynamic>`, which rejects them and surfaces as
/// a "Stac Parse Error" (most visibly on buttons). Round-tripping through JSON
/// yields real `Map<String, dynamic>`/`List<dynamic>` nodes throughout.
Map<String, dynamic> asRenderableJson(Map<String, dynamic> json) =>
    jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          HomeState(
            jsonData: asRenderableJson(helloStacSample),
            selectedEntry: playgroundEntries.first,
            dartCode: helloStacDartCode,
            showCodeView: true,
          ),
        );

  /// Loads an entry's JSON and Dart sources (inline or from assets) and
  /// makes it the selected entry.
  Future<void> selectEntry(PlaygroundEntry entry) async {
    var json = entry.json;
    var dart = entry.dartCode;
    try {
      json ??= jsonDecode(await rootBundle.loadString(entry.jsonAsset!))
          as Map<String, dynamic>;
      dart ??= await rootBundle.loadString(entry.dartAsset!);
    } catch (_) {
      return;
    }
    emit(
      state.copyWith(
        selectedEntry: entry,
        jsonData: asRenderableJson(json),
        dartCode: dart,
        edited: false,
      ),
    );
  }

  void setQuery(String query) {
    emit(state.copyWith(query: query));
  }

  /// Replace the rendered JSON with the latest valid editor content.
  void updateJsonData(Map<String, dynamic> json) {
    emit(state.copyWith(jsonData: json));
  }

  void setEdited(bool edited) {
    if (state.edited != edited) {
      emit(state.copyWith(edited: edited));
    }
  }

  void toggleDarkMode() {
    emit(state.copyWith(darkMode: !state.darkMode));
  }

  void toggleCodeView() {
    emit(state.copyWith(showCodeView: !state.showCodeView));
  }

  void reduceScale() {
    emit(state.copyWith(scale: (state.scale - 0.1).clamp(0.3, 3.0)));
  }

  void increaseScale() {
    emit(state.copyWith(scale: (state.scale + 0.1).clamp(0.3, 3.0)));
  }

  void resetScale() {
    emit(state.copyWith(scale: 1.0));
  }

  void setCodeLanguage(CodeLanguage language) {
    emit(state.copyWith(codeLanguage: language));
  }

  void setView(PlaygroundView view) {
    emit(state.copyWith(view: view));
  }

  void setMobileDark(bool dark) {
    emit(state.copyWith(mobileDark: dark));
  }
}

const Map<String, dynamic> formSample = {
  "type": "scaffold",
  "backgroundColor": "#F4F6FA",
  "appBar": {"type": "appBar"},
  "body": {
    "type": "form",
    "child": {
      "type": "padding",
      "padding": {
        "left": 24,
        "right": 24,
      },
      "child": {
        "type": "column",
        "crossAxisAlignment": "start",
        "children": [
          {
            "type": "text",
            "data": "BettrDo Sign in",
            "style": {
              "fontSize": 24,
              "fontWeight": "w900",
              "height": 1.3,
            }
          },
          {
            "type": "sizedBox",
            "height": 24,
          },
          {
            "type": "textFormField",
            "id": "email",
            "autovalidateMode": "onUserInteraction",
            "validatorRules": [
              {
                "rule": "isEmail",
                "message": "Please enter a valid email",
              }
            ],
            "style": {
              "fontSize": 16,
              "fontWeight": "w400",
              "height": 1.5,
            },
            "decoration": {
              "hintText": "Email",
              "filled": true,
              "fillColor": "#FFFFFF",
              "border": {
                "type": "outlineInputBorder",
                "borderRadius": 8,
                "color": "#24151D29",
              }
            },
          },
          {
            "type": "sizedBox",
            "height": 16,
          },
          {
            "type": "textFormField",
            "autovalidateMode": "onUserInteraction",
            "validatorRules": [
              {
                "rule": "isPassword",
                "message": "Please enter a valid password",
              }
            ],
            "obscureText": true,
            "maxLines": 1,
            "style": {
              "fontSize": 16,
              "fontWeight": "w400",
              "height": 1.5,
            },
            "decoration": {
              "hintText": "Password",
              "filled": true,
              "fillColor": "#FFFFFF",
              "border": {
                "type": "outlineInputBorder",
                "borderRadius": 8,
                "color": "#24151D29",
              }
            },
          },
          {
            "type": "sizedBox",
            "height": 32,
          },
          {
            "type": "filledButton",
            "style": {
              "backgroundColor": "#151D29",
              "shape": {
                "borderRadius": 8,
              }
            },
            "onPressed": {},
            "child": {
              "type": "padding",
              "padding": {
                "top": 14,
                "bottom": 14,
                "left": 16,
                "right": 16,
              },
              "child": {
                "type": "row",
                "mainAxisAlignment": "spaceBetween",
                "children": [
                  {
                    "type": "text",
                    "data": "Proceed",
                  },
                  {
                    "type": "icon",
                    "iconType": "material",
                    "icon": "arrow_forward",
                  }
                ],
              },
            }
          },
          {
            "type": "sizedBox",
            "height": 16,
          },
          {
            "type": "align",
            "alignment": "center",
            "child": {
              "type": "textButton",
              "onPressed": {},
              "child": {
                "type": "text",
                "data": "Forgot password?",
                "style": {
                  "fontSize": 15,
                  "fontWeight": "w500",
                  "color": "#4745B4",
                }
              }
            }
          },
          {
            "type": "sizedBox",
            "height": 8,
          },
          {
            "type": "align",
            "alignment": "center",
            "child": {
              "type": "text",
              "data": "Don't have an account? ",
              "style": {
                "fontSize": 15,
                "fontWeight": "w400",
                "color": "#000000",
              },
              "children": [
                {
                  "data": "Sign Up for BettrDo",
                  "style": {
                    "fontSize": 15,
                    "fontWeight": "w500",
                    "color": "#4745B4",
                  }
                }
              ],
            },
          }
        ],
      },
    }
  }
};

const Map<String, dynamic> helloStacSample = {
  "type": "scaffold",
  "body": {
    "type": "padding",
    "padding": {"top": 80, "left": 24, "right": 24, "bottom": 24},
    "child": {
      "type": "column",
      "crossAxisAlignment": "start",
      "children": [
        {
          "type": "container",
          "width": 56,
          "height": 56,
          "decoration": {
            "borderRadius": 12,
          },
          "clipBehavior": "hardEdge",
          "child": {
            "type": "image",
            "src":
                "https://pbs.twimg.com/profile_images/1886322776921042944/5Nveo4M2_400x400.png"
          }
        },
        {
          "type": "sizedBox",
          "height": 40,
        },
        {
          "type": "image",
          "src":
              "https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/Welcome%20to.png",
        },
        {
          "type": "text",
          "data": "Stac Playground",
          "style": {
            "fontSize": 36,
            "fontWeight": "w600",
            "height": 1.3,
          }
        },
        {
          "type": "sizedBox",
          "height": 32,
        },
        {
          "type": "text",
          "data":
              "Stac is a Server-Driven UI (SDUI) framework for Flutter. Stac allows you to build beautiful cross-platform applications with JSON in real time.",
          "style": {
            "fontSize": 18,
            "fontWeight": "w400",
            "height": 1.5,
          }
        },
        {"type": "spacer"},
        {
          "type": "container",
          "height": 1,
          "widht": 1000,
          "color": "#20010810",
        },
        {
          "type": "sizedBox",
          "height": 24,
        },
        {
          "type": "text",
          "data": "Follow us for more updates:",
          "style": {
            "fontSize": 18,
            "fontWeight": "w400",
            "height": 1.5,
            "color": "#80010810"
          }
        },
        {
          "type": "sizedBox",
          "height": 20,
        },
        {
          "type": "column",
          "spacing": 20,
          "children": [
            {
              "type": "row",
              "spacing": 20,
              "children": [
                {
                  "type": "container",
                  "width": 44,
                  "height": 44,
                  "decoration": {
                    "borderRadius": 12,
                  },
                  "clipBehavior": "hardEdge",
                  "child": {
                    "type": "image",
                    "src":
                        "https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/github.png"
                  }
                },
                {
                  "type": "text",
                  "data": "github.com/StacDev",
                  "style": {
                    "fontSize": 18,
                    "fontWeight": "w500",
                    "height": 1.5,
                  }
                }
              ],
            },
            {
              "type": "row",
              "spacing": 20,
              "children": [
                {
                  "type": "container",
                  "width": 44,
                  "height": 44,
                  "decoration": {
                    "borderRadius": 12,
                  },
                  "clipBehavior": "hardEdge",
                  "child": {
                    "type": "image",
                    "src":
                        "https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/x.png"
                  }
                },
                {
                  "type": "text",
                  "data": "x.com/stac_dev",
                  "style": {
                    "fontSize": 18,
                    "fontWeight": "w500",
                    "height": 1.5,
                  }
                }
              ],
            },
            {
              "type": "row",
              "spacing": 20,
              "children": [
                {
                  "type": "container",
                  "width": 44,
                  "height": 44,
                  "decoration": {
                    "borderRadius": 12,
                  },
                  "clipBehavior": "hardEdge",
                  "child": {
                    "type": "image",
                    "src":
                        "https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/linkedin.png"
                  }
                },
                {
                  "type": "text",
                  "data": "/company/StacDev",
                  "style": {
                    "fontSize": 18,
                    "fontWeight": "w500",
                    "height": 1.5,
                  }
                }
              ],
            }
          ],
        }
      ],
    }
  }
};

/// Stac DSL source for the `hello_stac` screen. `stac build` compiles this
/// to the JSON in [helloStacSample].
const String helloStacDartCode = r'''
import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'hello_stac')
StacWidget helloStac() {
  return StacScaffold(
    body: StacPadding(
      padding: StacEdgeInsets.only(top: 80, left: 24, right: 24, bottom: 24),
      child: StacColumn(
        crossAxisAlignment: StacCrossAxisAlignment.start,
        children: [
          StacContainer(
            width: 56,
            height: 56,
            decoration: StacBoxDecoration(
              borderRadius: StacBorderRadius.all(12),
            ),
            clipBehavior: StacClip.hardEdge,
            child: StacImage(
              src:
                  'https://pbs.twimg.com/profile_images/1886322776921042944/5Nveo4M2_400x400.png',
            ),
          ),
          StacSizedBox(height: 40),
          StacImage(
            src:
                'https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/Welcome%20to.png',
          ),
          StacText(
            data: 'Stac Playground',
            style: StacTextStyle(
              fontSize: 36,
              fontWeight: StacFontWeight.w600,
              height: 1.3,
            ),
          ),
          StacSizedBox(height: 32),
          StacText(
            data:
                'Stac is a Server-Driven UI (SDUI) framework for Flutter. Stac allows you to build beautiful cross-platform applications with JSON in real time.',
            style: StacTextStyle(
              fontSize: 18,
              fontWeight: StacFontWeight.w400,
              height: 1.5,
            ),
          ),
          StacSpacer(),
          StacContainer(height: 1, width: 1000, color: '#20010810'),
          StacSizedBox(height: 24),
          StacText(
            data: 'Follow us for more updates:',
            style: StacTextStyle(
              fontSize: 18,
              fontWeight: StacFontWeight.w400,
              height: 1.5,
              color: '#80010810',
            ),
          ),
          StacSizedBox(height: 20),
          StacColumn(
            spacing: 20,
            children: [
              _socialRow(
                icon:
                    'https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/github.png',
                handle: 'github.com/StacDev',
              ),
              _socialRow(
                icon:
                    'https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/x.png',
                handle: 'x.com/stac_dev',
              ),
              _socialRow(
                icon:
                    'https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/linkedin.png',
                handle: '/company/StacDev',
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

/// The DSL is plain Dart, so repeated UI can be extracted into helpers.
StacWidget _socialRow({required String icon, required String handle}) {
  return StacRow(
    spacing: 20,
    children: [
      StacContainer(
        width: 44,
        height: 44,
        decoration: StacBoxDecoration(
          borderRadius: StacBorderRadius.all(12),
        ),
        clipBehavior: StacClip.hardEdge,
        child: StacImage(src: icon),
      ),
      StacText(
        data: handle,
        style: StacTextStyle(
          fontSize: 18,
          fontWeight: StacFontWeight.w500,
          height: 1.5,
        ),
      ),
    ],
  );
}
''';

/// Stac DSL source for the `form_screen` screen. `stac build` compiles this
/// to the JSON in [formSample].
const String formDartCode = r'''
import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'form_screen')
StacWidget formScreen() {
  return StacScaffold(
    backgroundColor: '#F4F6FA',
    appBar: StacAppBar(),
    body: StacForm(
      child: StacPadding(
        padding: StacEdgeInsets.only(left: 24, right: 24),
        child: StacColumn(
          crossAxisAlignment: StacCrossAxisAlignment.start,
          children: [
            StacText(
              data: 'BettrDo Sign in',
              style: StacTextStyle(
                fontSize: 24,
                fontWeight: StacFontWeight.w900,
                height: 1.3,
              ),
            ),
            StacSizedBox(height: 24),
            StacTextFormField(
              id: 'email',
              autovalidateMode: StacAutovalidateMode.onUserInteraction,
              validatorRules: [
                StacFormFieldValidator(
                  rule: 'isEmail',
                  message: 'Please enter a valid email',
                ),
              ],
              style: StacTextStyle(
                fontSize: 16,
                fontWeight: StacFontWeight.w400,
                height: 1.5,
              ),
              decoration: _fieldDecoration(hintText: 'Email'),
            ),
            StacSizedBox(height: 16),
            StacTextFormField(
              autovalidateMode: StacAutovalidateMode.onUserInteraction,
              validatorRules: [
                StacFormFieldValidator(
                  rule: 'isPassword',
                  message: 'Please enter a valid password',
                ),
              ],
              obscureText: true,
              maxLines: 1,
              style: StacTextStyle(
                fontSize: 16,
                fontWeight: StacFontWeight.w400,
                height: 1.5,
              ),
              decoration: _fieldDecoration(hintText: 'Password'),
            ),
            StacSizedBox(height: 32),
            StacFilledButton(
              style: StacButtonStyle(
                backgroundColor: '#151D29',
                shape: StacRoundedRectangleBorder(
                  borderRadius: StacBorderRadius.all(8),
                ),
              ),
              child: StacPadding(
                padding: StacEdgeInsets.only(
                  top: 14,
                  bottom: 14,
                  left: 16,
                  right: 16,
                ),
                child: StacRow(
                  mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
                  children: [
                    StacText(data: 'Proceed'),
                    StacIcon(icon: 'arrow_forward'),
                  ],
                ),
              ),
            ),
            StacSizedBox(height: 16),
            StacAlign(
              alignment: StacAlignmentDirectional.center,
              child: StacTextButton(
                child: StacText(
                  data: 'Forgot password?',
                  style: StacTextStyle(
                    fontSize: 15,
                    fontWeight: StacFontWeight.w500,
                    color: '#4745B4',
                  ),
                ),
              ),
            ),
            StacSizedBox(height: 8),
            StacAlign(
              alignment: StacAlignmentDirectional.center,
              child: StacText(
                data: "Don't have an account? ",
                style: StacTextStyle(
                  fontSize: 15,
                  fontWeight: StacFontWeight.w400,
                  color: '#000000',
                ),
                children: [
                  StacTextSpan(
                    text: 'Sign Up for BettrDo',
                    style: StacTextStyle(
                      fontSize: 15,
                      fontWeight: StacFontWeight.w500,
                      color: '#4745B4',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

/// Shared outline decoration for the sign-in fields.
StacInputDecoration _fieldDecoration({required String hintText}) {
  return StacInputDecoration(
    hintText: hintText,
    filled: true,
    fillColor: '#FFFFFF',
    border: StacInputBorder(
      type: StacInputBorderType.outlineInputBorder,
      borderRadius: StacBorderRadius.all(8),
      color: '#24151D29',
    ),
  );
}
''';
