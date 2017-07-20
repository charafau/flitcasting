package com.yourcompany.flitcasting;

import android.content.Intent;
import android.os.Bundle;

import android.widget.TextView;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;


public class MainActivity extends FlutterActivity {

    private static final String CHANNEL = "com.yourcompany.flitcasting/video_activity";
    private static final String METHOD_SWITCH_VIEW = "switchview";
    private static final int VIDEO_REQUEST = 1;

    private MethodChannel.Result result;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);

        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                new MethodChannel.MethodCallHandler() {
                    @Override
                    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                        MainActivity.this.result = result;
                        String message = methodCall.arguments();
                        if (methodCall.method.equals(METHOD_SWITCH_VIEW)) {
                            onlaunchFullScreen(message);
                        } else {
                            result.notImplemented();
                        }
                    }
                }
        );

    }


    private void onlaunchFullScreen(String message) {
        Intent fullScreenIntent = new Intent(this, VideoActivity.class);
        fullScreenIntent.putExtra(VideoActivity.EXTRA_COUNTER, message);
        startActivityForResult(fullScreenIntent, VIDEO_REQUEST);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == VIDEO_REQUEST) {
            if (resultCode == RESULT_OK) {
//                result.success(data.getIntExtra(VideoActivity.EXTRA_COUNTER, 0));
            } else {
                result.error("ACTIVITY_FAILURE", "Failed while launching activity", null);
            }
        }
    }
}
