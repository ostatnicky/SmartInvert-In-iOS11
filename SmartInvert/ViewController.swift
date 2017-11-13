//
//  ViewController.swift
//  SmartInvert
//
//  Created by Jiri Ostatnicky on 02/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit
import UIKit.UIAccessibility

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
        setup()
    }
}

// MARK: - Private
private extension ViewController {
    
    func setup() {
        customColorLabel.accessibilityIgnoresInvertColors = true
        button.accessibilityIgnoresInvertColors = true
        image.accessibilityIgnoresInvertColors = true
        rectangle.accessibilityIgnoresInvertColors = true
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIAccessibilityInvertColorsStatusDidChange, object: nil, queue: OperationQueue.main) { [weak self] notification in
            guard let `self` = self else { return }
            
            if UIAccessibilityIsInvertColorsEnabled() {
                self.customColorLabel.textColor = .red
            } else {
                self.customColorLabel.textColor = .black
            }
        }
    }
}

