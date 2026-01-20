import java.io.File

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

// Function to get the latest NDK version
fun getLatestNDKVersion(): String {
    val ndkDir = File(android.sdkDirectory, "ndk")
    val versions = ndkDir.listFiles()
    ?.filter { it.isDirectory }
    ?.map { it.name }
    ?.sorted()

    return versions?.lastOrNull()
    ?: throw GradleException("No NDK version found in ${ndkDir.absolutePath}")
}

android {
    namespace = "com.example.kingofcomfort"
    compileSdk = 36
    ndkVersion = getLatestNDKVersion()

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.kingofcomfort"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = 36
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
