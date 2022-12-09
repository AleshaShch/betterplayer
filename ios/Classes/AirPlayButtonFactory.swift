import Flutter

public class AirPlayButtonFactory: NSObject, FlutterPlatformViewFactory {
    let registrar: FlutterPluginRegistrar

    init(registrar: FlutterPluginRegistrar) {
        self.registrar = registrar
    }

    public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return AirPlayButtonController(withFrame: frame, viewIdentifier: viewId, arguments: args, registrar: registrar)
    }

}
