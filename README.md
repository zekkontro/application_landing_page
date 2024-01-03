

![Example Screenshot](https://i.hizliresim.com/br5ffi7.jpg)
## Application Landing Page

#### You can prepare simple landing pages for your applications.

### Setup

    git clone https://github.com/zekkontro/application_landing_page.git

**Open  config.json file**

![config.json](https://i.hizliresim.com/b14ezhs.jpg)

**Than edit this JSON file for your app specifacitons**
<br>
|Keys| Description |
|--|--|
| **app-screenshots** | In-app screenshots for phone mockup directory|
| **rgb-background-color** | Page background color. It is in RGB format|
| **app-icon-image** | Application icon image from **assets/screenshots/** |
| **app-short-description** | Application short description |
| **application-title** | Application name |
| **ios-support** | Application IOS support for store badges |
| **android-support** | Application Android support for store badges |
| **long-description-list** | Application features for the footer part. Properties: svg-icon, title, description, icon-background-color. Icon's root directory is **assets/svg/**|
| **description-title-style** | Description title style for features |
| **description-style** | Description style for features |
| **title-text-style** | Application title text style |
| **social-media-accounts** | Application's social media accounts. Icon Format is svg and root directory is **assets/svg/**|

<br>

### Build Website

Run command on your root directory

    flutter build web --web-renderer html --release
  
  ### Deploy Site
[Flutter Document Link](https://flutter.dev/docs/deployment/web#deploying-to-the-web)

[Firebase Hosting](https://firebase.google.com/docs/hosting)

[Github Pages](https://pages.github.com/)

## Authors

#### Mustafa Berat Kurt - zekkontro

#### [Github Page](https://github.com/zekkontro)

#### [Instagram Page](https://www.instagram.com/brtwlf/)
