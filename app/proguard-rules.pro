# Reconstructed app - keep rules

# Keep Capacitor plugin classes (registered reflectively)
-keep class com.getcapacitor.** { *; }
-keep class com.capacitorjs.** { *; }
-keep class com.mycompany.plugins.** { *; }
-keep class com.yyb.capacitor.** { *; }
-keep class yyb.ai.** { *; }

# PictureSelector / Glide
-keep class com.luck.picture.lib.** { *; }
-dontwarn com.luck.picture.lib.**
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep class * extends com.bumptech.glide.module.AppGlideModule {
    <init>(...);
}
