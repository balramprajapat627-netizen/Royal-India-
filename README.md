# ROYAL INDIA — Flutter starter prototype

This is a clickable UI starter for the planned Android + iOS app.

## Included
- Blue and white design
- Hindi/English language toggle
- Home, services, and profile tabs
- Sections for card games, earning information, agriculture, shopping, and business
- Demo navigation and safety notes

## Important: what is not connected yet
This is a front-end prototype, not a published or production app. Mobile OTP, user/photo storage, live mandi prices, verified scheme feeds, product catalog, payments, seller tools, and real card-game logic still need backend services and testing. No real-money betting or cash-out is included.

## Get an Android APK using GitHub Actions
This project includes `.github/workflows/android-apk.yml` to build an APK in GitHub's cloud.

1. Sign in to GitHub and create a new empty repository named `royal-india`.
2. Extract this ZIP on a computer and upload all files/folders (including the hidden `.github` folder) to the repository. Commit them to the `main` branch.
3. Open the repository's **Actions** tab and select **Build Royal India APK**.
4. Wait for the workflow to finish successfully.
5. Open that completed workflow run, scroll to **Artifacts**, and download `royal-india-apk`. Extract it to get `app-release.apk`.
6. Transfer the APK to your Android phone and install it. Android may ask you to allow installation from that file manager/browser.

If you only have a phone, use GitHub's website in your browser and switch on **Desktop site** to upload the extracted project files. Uploading a ZIP as a single file is not enough; the project contents must be in the repository root.

## Local build
1. Install Flutter SDK and Android Studio (for Android) or Xcode on a Mac (for iOS).
2. In this folder run: `flutter pub get`
3. Run on a connected phone/emulator: `flutter run`
4. Android APK: `flutter build apk --release`
5. iOS: `flutter build ios --release` (requires macOS and Xcode).

For OTP, configure Firebase Authentication and add platform configuration files before enabling sign-in.
