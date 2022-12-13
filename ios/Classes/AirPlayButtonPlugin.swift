import Flutter
import UIKit

public class AirPlayButtonPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let factory = AirPlayButtonFactory(registrar: registrar)
        registrar.register(factory, withId: "com.jhomlala/airplay_button")
    }
}
