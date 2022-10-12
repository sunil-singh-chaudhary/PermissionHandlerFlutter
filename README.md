# permission_demo_camera_storage

A new Flutter project.

## Getting Started

FOR ANdroid:-->

      Add the permission in ManifestFile You wanted To be Granted like below
          <uses-permission android:name="android.permission.INTERNET"/>
          <uses-permission android:name="android.permission.CAMERA"/>
          <!-- Permissions options for the `contacts` group -->
          <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
          <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
          
 FOR IOS:-->    
         Create A podfile if not present and paste the permission you want to grant uncomment it i already added all the permission and set to 1 for enable 0 for disable
         like below-->
          ## dart: PermissionGroup.camera
         'PERMISSION_CAMERA=1',
          2- Inside IOS/Runner/info.plist and add
                     <!-- Permission options for the `camera` group -->
                     <key>NSCameraUsageDescription</key>
                     <string>camera for taking photos</string>

	                  < !-- Permission options for the `photos` group -->
                    <key>NSPhotoLibraryUsageDescription</key>
                   <string>photos</string>
