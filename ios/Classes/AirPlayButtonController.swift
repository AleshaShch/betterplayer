import Flutter
import AVKit

public class AirPlayButtonController: NSObject, FlutterPlatformView {

    private let airPlayButton: AVRoutePickerView

    init(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        registrar: FlutterPluginRegistrar
    ) {
        airPlayButton = AVRoutePickerView()
        airPlayButton.tintColor = UIColor.white
        airPlayButton.activeTintColor = UIColor(red: 0.07, green: 0.45, blue: 0.87, alpha: 1.00)
        if #available(iOS 13.0, *) {
            airPlayButton.prioritizesVideoDevices = true
        }
    }

    public func view() -> UIView {
        return airPlayButton
    }
    
}
