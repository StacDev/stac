import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'form')
StacWidget formExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Sign in Form')),
    body: StacPadding(
      padding: StacEdgeInsets.all(12),
      child: StacSingleChildScrollView(
        child: StacForm(
          child: StacColumn(
            children: [
              StacTextFormField(
                id: 'username',
                initialValue: 'kminchelle',
                keyboardType: StacTextInputType.text,
                textInputAction: StacTextInputAction.next,
                maxLines: 1,
                decoration: StacInputDecoration(hintText: 'Username'),
                validatorRules: [
                  StacFormFieldValidator(
                    rule: 'isAlphanumeric',
                    message: 'Letters and numbers only',
                  ),
                  StacFormFieldValidator(
                    rule: 'isLength',
                    options: {'min': 8, 'max': 20},
                    message: 'Username must be 8-20 characters',
                  ),
                ],
              ),
              StacTextFormField(
                id: 'password',
                keyboardType: StacTextInputType.visiblePassword,
                initialValue: '0lelplR',
                textInputAction: StacTextInputAction.done,
                maxLines: 1,
                decoration: StacInputDecoration(hintText: 'Password'),
                autovalidateMode: StacAutovalidateMode.onUserInteraction,
                validatorRules: [
                  StacFormFieldValidator(
                    rule: 'isLength',
                    options: {'min': 1},
                    message: 'Password is required',
                  ),
                ],
              ),
              StacSizedBox(height: 24),
              StacElevatedButton(
                child: StacText(data: 'Sign in'),
                style: StacButtonStyle(
                  backgroundColor: 'primary',
                  foregroundColor: '#ffffff',
                ),
                onPressed: StacFormValidate(
                  isValid: StacNetworkRequest(
                    url: 'https://dummyjson.com/auth/login',
                    method: Method.post,
                    contentType: 'application/json',
                    body: {
                      'username': {
                        'actionType': 'getFormValue',
                        'id': 'username',
                      },
                      'password': {
                        'actionType': 'getFormValue',
                        'id': 'password',
                      },
                    },
                    results: [
                      StacNetworkResult(
                        statusCode: 200,
                        action: {
                          'actionType': 'showDialog',
                          'widget': {
                            'type': 'alertDialog',
                            'title': {'type': 'text', 'data': 'Successful'},
                          },
                        },
                      ),
                      StacNetworkResult(
                        statusCode: 400,
                        action: {
                          'actionType': 'showDialog',
                          'widget': {
                            'type': 'alertDialog',
                            'title': {'type': 'text', 'data': 'Error'},
                          },
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
