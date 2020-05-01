package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import de.esys.esysfluttershare.EsysFlutterSharePlugin;
import io.endigo.plugins.pdfviewflutter.PDFViewFlutterPlugin;
import pt.tribeiro.flutter_plugin_pdf_viewer.FlutterPluginPdfViewerPlugin;
import io.flutter.plugins.imagepicker.ImagePickerPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import com.tekartik.sqflite.SqflitePlugin;
import io.flutter.plugins.videoplayer.VideoPlayerPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    EsysFlutterSharePlugin.registerWith(registry.registrarFor("de.esys.esysfluttershare.EsysFlutterSharePlugin"));
    PDFViewFlutterPlugin.registerWith(registry.registrarFor("io.endigo.plugins.pdfviewflutter.PDFViewFlutterPlugin"));
    FlutterPluginPdfViewerPlugin.registerWith(registry.registrarFor("pt.tribeiro.flutter_plugin_pdf_viewer.FlutterPluginPdfViewerPlugin"));
    ImagePickerPlugin.registerWith(registry.registrarFor("io.flutter.plugins.imagepicker.ImagePickerPlugin"));
    PathProviderPlugin.registerWith(registry.registrarFor("io.flutter.plugins.pathprovider.PathProviderPlugin"));
    SqflitePlugin.registerWith(registry.registrarFor("com.tekartik.sqflite.SqflitePlugin"));
    VideoPlayerPlugin.registerWith(registry.registrarFor("io.flutter.plugins.videoplayer.VideoPlayerPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
