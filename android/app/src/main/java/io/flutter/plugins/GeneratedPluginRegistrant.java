package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import cachet.plugins.appusage.AppUsagePlugin;
import io.flutter.plugins.battery.BatteryPlugin;
import io.flutter.plugins.connectivity.ConnectivityPlugin;
import fr.g123k.deviceapps.DeviceAppsPlugin;
import io.flutter.plugins.deviceinfo.DeviceInfoPlugin;
import com.pauldemarco.flutterblue.FlutterBluePlugin;
import cachet.sensors.light.LightPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import cachet.plugins.pedometer.PedometerPlugin;
import cachet.plugins.screenstate.ScreenStatePlugin;
import io.flutter.plugins.sensors.SensorsPlugin;
import com.ethras.simplepermissions.SimplePermissionsPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    AppUsagePlugin.registerWith(registry.registrarFor("cachet.plugins.appusage.AppUsagePlugin"));
    BatteryPlugin.registerWith(registry.registrarFor("io.flutter.plugins.battery.BatteryPlugin"));
    ConnectivityPlugin.registerWith(registry.registrarFor("io.flutter.plugins.connectivity.ConnectivityPlugin"));
    DeviceAppsPlugin.registerWith(registry.registrarFor("fr.g123k.deviceapps.DeviceAppsPlugin"));
    DeviceInfoPlugin.registerWith(registry.registrarFor("io.flutter.plugins.deviceinfo.DeviceInfoPlugin"));
    FlutterBluePlugin.registerWith(registry.registrarFor("com.pauldemarco.flutterblue.FlutterBluePlugin"));
    LightPlugin.registerWith(registry.registrarFor("cachet.sensors.light.LightPlugin"));
    PathProviderPlugin.registerWith(registry.registrarFor("io.flutter.plugins.pathprovider.PathProviderPlugin"));
    PedometerPlugin.registerWith(registry.registrarFor("cachet.plugins.pedometer.PedometerPlugin"));
    ScreenStatePlugin.registerWith(registry.registrarFor("cachet.plugins.screenstate.ScreenStatePlugin"));
    SensorsPlugin.registerWith(registry.registrarFor("io.flutter.plugins.sensors.SensorsPlugin"));
    SimplePermissionsPlugin.registerWith(registry.registrarFor("com.ethras.simplepermissions.SimplePermissionsPlugin"));
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
