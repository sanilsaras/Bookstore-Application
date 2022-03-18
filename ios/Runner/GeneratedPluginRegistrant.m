//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<share/FLTSharePlugin.h>)
#import <share/FLTSharePlugin.h>
#else
@import share;
#endif

#if __has_include(<speech_recognition/SpeechRecognitionPlugin.h>)
#import <speech_recognition/SpeechRecognitionPlugin.h>
#else
@import speech_recognition;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FLTSharePlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTSharePlugin"]];
  [SpeechRecognitionPlugin registerWithRegistrar:[registry registrarForPlugin:@"SpeechRecognitionPlugin"]];
}

@end
