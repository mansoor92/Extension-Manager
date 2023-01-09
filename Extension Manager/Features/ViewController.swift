//
//  ViewController.swift
//  extensionsman
//
//  Created by Mansoor Ali on 09/01/2023.
//

import Cocoa

extension NSView {
    func setSize(greaterThanEqualTo size: CGSize)  {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(greaterThanOrEqualToConstant: size.width).isActive = true
        heightAnchor.constraint(greaterThanOrEqualToConstant: size.height).isActive = true
    }
}

struct R {
    struct Dimension {
        static var screenSize: CGSize {
            let isFullScreen = NSApplication.shared.windows.first?.styleMask.contains(.fullScreen) ?? false
            if let size = NSScreen.main?.visibleFrame.size, !isFullScreen {
                return CGSize(width: size.width, height: size.height-20)
            }else {
                return  CGSize(width: 970, height: 700)
            }
        }
        static var minimunSize: CGSize { CGSize(width: 750, height: 450)}
    }
    
    struct Color {
        static let grey = NSColor(named: "grey")
        static let text = NSColor.black
    }
}

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.appearance = NSAppearance(named: .vibrantLight)
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.white.cgColor
        self.view.setSize(greaterThanEqualTo: R.Dimension.minimunSize)
        
    }
    
    @IBAction func valueChanged(_ sender: NSSwitch) {
        
    }
}

