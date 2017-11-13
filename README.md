# Smart Invert In iOS11

iOS 11 brings new feature: Smart Invert. You can define what view’s colors can be inverted.

<img src="https://github.com/ostatnicky/SmartInvert-In-OS11/blob/master/ScreenShot-Normal.png?raw=true" width="280"> <img src="https://github.com/ostatnicky/SmartInvert-In-OS11/blob/master/ScreenShot-ClassicInvert.png?raw=true" width="280"> <img src="https://github.com/ostatnicky/SmartInvert-In-OS11/blob/master/ScreenShot-SmartInvert.png?raw=true" width="280">


## Code Example

```swift
class ViewController: UIViewController {

    // MARK: - UI
    @IBOutlet fileprivate weak var label: UILabel!
    @IBOutlet fileprivate weak var customColorLabel: UILabel!
    @IBOutlet fileprivate weak var button: UIButton!
    @IBOutlet fileprivate weak var image: UIImageView!
    @IBOutlet fileprivate weak var rectangle: UIView!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        customColorLabel.accessibilityIgnoresInvertColors = true
        button.accessibilityIgnoresInvertColors = true
        image.accessibilityIgnoresInvertColors = true
        rectangle.accessibilityIgnoresInvertColors = true
    }
}

```


## Accessibility Shortcut for Smart Invert

iOS Settings -> General -> Accessibility -> Accessibility Shortcut -> Check Smart Invert Colors

After that just triple click to activation.
