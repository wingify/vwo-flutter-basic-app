# VWO Flutter Basic App

This Flutter test app allows you to A/B Test your Flutter integration.

## Requirements

* Dart sdk version ```>=2.12.0 <3.0.0```
* Flutter version ```>=3.0.0```

## Documentation

Refer [Official VWO Documentation](https://developers.vwo.com/reference#flutter-guide)


## Basic Usage


![simulator_screenshot_5152C39B-C141-4EBA-956E-E34FDAADB436 (1)](https://user-images.githubusercontent.com/3494296/233905493-1e5ecd75-51d3-4aa8-830c-6a9e63c4963b.png)



**Instantiation**

SDK provides a method to instantiate a VWO client as an instance. The method accepts an apiKey and an object to configure the VWO client.
The required parameter for instantiating the SDK is apiKey.

PLEASE NOTE: RESPECTIVE IMPLEMENTATION IS ONLY FOR IOS FOR TESTING PERSPECTIVE. 

```dart
VWOConfig vwoConfig = VWOConfig(userId:"", optOut: false,  disablePreview: true);

VWO.launch(ios_apiKey, vwoConfig: vwoConfig);       //REPLACE "ios_apiKey" here
```


**Get Variation Name**

```dart
VWO.getVariationNameForTestKey("Campaign_Key")      //REPLACE "Campaign_Key" here
    .then((value) => { print("variation name selected -> ${value}")});

```


**Trigger Goal**

```dart
//custom-goal
VWO.trackConversion("Campaign_Goal");               //REPLACE "Campaign_Goal" here
```

## Credentials

This SDK requires an app key. You can sign up for an account at [VWO](https://vwo.com). 
Once there, you can add a new Android/iOS App, and use the generated app key in the app.

## Setting up VWO account

* Sign Up for VWO account at https://vwo.com
* Create a new android app from create menu
* Use the app generated app key, while integrating SDK into android/iOS app.
* Create and run campaigns.


## Changelog
Refer [CHANGELOG.md](https://github.com/wingify/vwo-flutter-sdk/blob/master/CHANGELOG.md)

## Contributing

Please go through our [contributing guidelines](https://github.com/wingify/vwo-flutter-sdk/blob/master/CONTRIBUTING.md)


## Code of Conduct

[Code of Conduct](https://github.com/wingify/vwo-flutter-sdk/blob/master/CODE_OF_CONDUCT.md)


## License

[Apache License, Version 2.0](https://github.com/wingify/vwo-flutter-sdk/blob/master/LICENSE)

Copyright 2021 Wingify Software Pvt. Ltd.
