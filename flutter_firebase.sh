# This is a Bash script that configures FlutterFire for Android and iOS platforms by looping through each flavor and build mode and running the flutterfire configure command with the specified arguments.
# https://gist.github.com/saileshbro/4bdbddc83df19d546c5acdbf6ef2462a
#!/bin/sh
CONFIG_DIR="lib/app/config/firebase"
FLAVORS=("development" "production")

for FLAVOR in "${FLAVORS[@]}"; do
  PROJECT="example-prod"
  BUNDLE_ID="com.example"

  if [ "$FLAVOR" = "development" ]; then
    PROJECT="example-dev"
    BUNDLE_ID="$BUNDLE_ID.dev"
  fi

  for BUILD_MODE in "Debug" "Release" "Profile"; do
    flutterfire configure \
      --project="$PROJECT" \
      --platforms=android,ios \
      --out="$CONFIG_DIR"/"$FLAVOR"/firebase_options.dart \
      --android-out=/android/app/src/"$FLAVOR"/ \
      --android-package-name="$BUNDLE_ID" \
      --ios-bundle-id="$BUNDLE_ID" \
      --ios-build-config="$BUILD_MODE"-"$FLAVOR" \
      --ios-out=/ios/Firebase/"$FLAVOR"/GoogleService-Info.plist \
      --overwrite-firebase-options \
      --yes
  done
done
