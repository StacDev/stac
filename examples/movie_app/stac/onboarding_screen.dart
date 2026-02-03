import 'package:movie_app/constants/app_constants.dart';
import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'onboarding_screen')
StacWidget onboardingScreen() {
  return StacScaffold(
    body: StacStack(
      children: [
        StacImage(
          imageType: StacImageType.asset,
          src: AppAssets.onboardingImage,
          width: double.maxFinite,
          height: double.maxFinite,
          fit: StacBoxFit.cover,
        ),
        StacPositioned.fill(
          child: StacContainer(
            width: double.maxFinite,
            height: 500,
            decoration: StacBoxDecoration(
              gradient: StacGradient.linear(
                colors: ['#00050608', '#050608', '#050608'],
                begin: StacAlignment.topCenter,
                end: StacAlignment.bottomCenter,
                stops: [0.0, 0.8, 1.0],
              ),
            ),
            child: StacPadding(
              padding: StacEdgeInsets.only(
                left: 16,
                right: 16,
                top: 48,
                bottom: 48,
              ),
              child: StacColumn(
                mainAxisAlignment: StacMainAxisAlignment.end,
                crossAxisAlignment: StacCrossAxisAlignment.start,
                children: [
                  StacText(
                    data: AppStrings.onboardingTitle,
                    style: StacThemeData.textTheme.displayMedium,
                    children: [
                      StacTextSpan(
                        text: AppStrings.onboardingTitleAccent,
                        style: StacTextStyle(color: StacColors.primary),
                      ),
                    ],
                  ),
                  StacSizedBox(height: 24),
                  StacText(
                    data: AppStrings.onboardingDescription,
                    style: StacThemeData.textTheme.bodyMedium,
                  ),
                  StacSizedBox(height: 64),
                  StacSizedBox(
                    height: 48,
                    width: double.maxFinite,
                    child: StacFilledButton(
                      child: StacText(
                        data: AppStrings.onboardingGetStartedButton,
                      ),
                      onPressed: StacNavigator.pushStac('home_screen'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
