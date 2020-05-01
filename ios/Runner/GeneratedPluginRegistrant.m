//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"
#import <esys_flutter_share/EsysFlutterSharePlugin.h>
#import <flutter_pdfview/PDFViewFlutterPlugin.h>
#import <flutter_plugin_pdf_viewer/FlutterPluginPdfViewerPlugin.h>
#import <image_picker/ImagePickerPlugin.h>
#import <path_provider/PathProviderPlugin.h>
#import <sqflite/SqflitePlugin.h>
#import <video_player/VideoPlayerPlugin.h>

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [EsysFlutterSharePlugin registerWithRegistrar:[registry registrarForPlugin:@"EsysFlutterSharePlugin"]];
  [FLTPDFViewFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPDFViewFlutterPlugin"]];
  [FlutterPluginPdfViewerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterPluginPdfViewerPlugin"]];
  [FLTImagePickerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTImagePickerPlugin"]];
  [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
  [SqflitePlugin registerWithRegistrar:[registry registrarForPlugin:@"SqflitePlugin"]];
  [FLTVideoPlayerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTVideoPlayerPlugin"]];
}

@end
