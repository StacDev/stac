import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'conditional')
StacWidget conditionalExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Conditional Widget Example')),
    body: StacSingleChildScrollView(
      child: StacColumn(
        mainAxisAlignment: StacMainAxisAlignment.center,
        crossAxisAlignment: StacCrossAxisAlignment.center,
        children: [
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data:
                  'Conditional Widgets allow you to render different UI based on conditions',
              textAlign: StacTextAlign.center,
              style: StacTextStyle(
                fontSize: 16,
                fontWeight: StacFontWeight.w700,
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Example 1: Simple Boolean Comparison',
              style: StacTextStyle(
                fontSize: 18,
                fontWeight: StacFontWeight.w700,
              ),
            ),
          ),
          StacConditional(
            condition: '5 > 3',
            ifTrue: StacContainer(
              padding: StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: '#E1F5FE',
                borderRadius: StacBorderRadius.all(8),
              ),
              child: StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                children: [
                  StacIcon(icon: 'check_circle', color: '#01579B'),
                  StacSizedBox(width: 8),
                  StacText(
                    data: 'Condition is TRUE: 5 is greater than 3',
                    style: StacTextStyle(color: '#01579B'),
                  ),
                ],
              ),
            ),
            ifFalse: StacContainer(
              padding: StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: '#FFEBEE',
                borderRadius: StacBorderRadius.all(8),
              ),
              child: StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                children: [
                  StacIcon(icon: 'cancel', color: '#B71C1C'),
                  StacSizedBox(width: 8),
                  StacText(
                    data: 'Condition is FALSE: 5 is not greater than 3',
                    style: StacTextStyle(color: '#B71C1C'),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Example 2: String Comparison',
              style: StacTextStyle(
                fontSize: 18,
                fontWeight: StacFontWeight.w700,
              ),
            ),
          ),
          StacConditional(
            condition: 'Flutter == Flutter',
            ifTrue: StacContainer(
              padding: StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: '#E8F5E9',
                borderRadius: StacBorderRadius.all(8),
              ),
              child: StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                children: [
                  StacIcon(icon: 'check_circle', color: '#1B5E20'),
                  StacSizedBox(width: 8),
                  StacText(
                    data: 'Strings are equal',
                    style: StacTextStyle(color: '#1B5E20'),
                  ),
                ],
              ),
            ),
            ifFalse: StacContainer(
              padding: StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: '#FFEBEE',
                borderRadius: StacBorderRadius.all(8),
              ),
              child: StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                children: [
                  StacIcon(icon: 'cancel', color: '#B71C1C'),
                  StacSizedBox(width: 8),
                  StacText(
                    data: 'Strings are not equal',
                    style: StacTextStyle(color: '#B71C1C'),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Example 3: Mathematical Expression',
              style: StacTextStyle(
                fontSize: 18,
                fontWeight: StacFontWeight.w700,
              ),
            ),
          ),
          StacConditional(
            condition: '(10 + 5) * 2 == 30',
            ifTrue: StacContainer(
              padding: StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: '#E8F5E9',
                borderRadius: StacBorderRadius.all(8),
              ),
              child: StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                children: [
                  StacIcon(icon: 'check_circle', color: '#1B5E20'),
                  StacSizedBox(width: 8),
                  StacText(
                    data: '(10 + 5) * 2 equals 30',
                    style: StacTextStyle(color: '#1B5E20'),
                  ),
                ],
              ),
            ),
            ifFalse: StacContainer(
              padding: StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: '#FFEBEE',
                borderRadius: StacBorderRadius.all(8),
              ),
              child: StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                children: [
                  StacIcon(icon: 'cancel', color: '#B71C1C'),
                  StacSizedBox(width: 8),
                  StacText(
                    data: '(10 + 5) * 2 does not equal 30',
                    style: StacTextStyle(color: '#B71C1C'),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Example 4: Logical Operators',
              style: StacTextStyle(
                fontSize: 18,
                fontWeight: StacFontWeight.w700,
              ),
            ),
          ),
          StacConditional(
            condition: 'true && (false || true)',
            ifTrue: StacContainer(
              padding: StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: '#E8F5E9',
                borderRadius: StacBorderRadius.all(8),
              ),
              child: StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                children: [
                  StacIcon(icon: 'check_circle', color: '#1B5E20'),
                  StacSizedBox(width: 8),
                  StacText(
                    data: 'Logical expression is TRUE',
                    style: StacTextStyle(color: '#1B5E20'),
                  ),
                ],
              ),
            ),
            ifFalse: StacContainer(
              padding: StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: '#FFEBEE',
                borderRadius: StacBorderRadius.all(8),
              ),
              child: StacRow(
                mainAxisAlignment: StacMainAxisAlignment.center,
                children: [
                  StacIcon(icon: 'cancel', color: '#B71C1C'),
                  StacSizedBox(width: 8),
                  StacText(
                    data: 'Logical expression is FALSE',
                    style: StacTextStyle(color: '#B71C1C'),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Example 5: Nested Conditionals',
              style: StacTextStyle(
                fontSize: 18,
                fontWeight: StacFontWeight.w700,
              ),
            ),
          ),
          StacConditional(
            condition: '3 < 5',
            ifTrue: StacConditional(
              condition: '10 > 8',
              ifTrue: StacContainer(
                padding: StacEdgeInsets.all(16),
                decoration: StacBoxDecoration(
                  color: '#E1F5FE',
                  borderRadius: StacBorderRadius.all(8),
                ),
                child: StacText(
                  data: 'Both conditions are TRUE: 3 < 5 AND 10 > 8',
                  textAlign: StacTextAlign.center,
                  style: StacTextStyle(
                    color: '#01579B',
                    fontWeight: StacFontWeight.w700,
                  ),
                ),
              ),
              ifFalse: StacContainer(
                padding: StacEdgeInsets.all(16),
                decoration: StacBoxDecoration(
                  color: '#FFF3E0',
                  borderRadius: StacBorderRadius.all(8),
                ),
                child: StacText(
                  data: 'First condition is TRUE, but second is FALSE',
                  textAlign: StacTextAlign.center,
                  style: StacTextStyle(
                    color: '#E65100',
                    fontWeight: StacFontWeight.w700,
                  ),
                ),
              ),
            ),
            ifFalse: StacContainer(
              padding: StacEdgeInsets.all(16),
              decoration: StacBoxDecoration(
                color: '#FFEBEE',
                borderRadius: StacBorderRadius.all(8),
              ),
              child: StacText(
                data: 'First condition is FALSE',
                textAlign: StacTextAlign.center,
                style: StacTextStyle(
                  color: '#B71C1C',
                  fontWeight: StacFontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
