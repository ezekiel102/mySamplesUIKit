//
//  BigButton.swift
//  mySamplesUIKit
//
//  Created by Рустем on 25.02.2024.
//

import UIKit

class BigButton: UIButton {

    var inset: CGFloat?

    override init(frame: CGRect) {
        super.init(frame: frame)
        }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let pointIsInside = super.point(inside: point, with: event)
        if pointIsInside == false {

            // MARK: - if need change boundaries by x (override hitTest and point)

            let x: CGFloat = inset ?? 0
            return bounds.insetBy(dx: x, dy: x).contains(point)

            // MARK: - if subviews goes out bounds parent view

//            for subview in subviews {
//                let pointInSubview = subview.convert(point, from: self)
//                if subview.point(inside: pointInSubview, with: event) {
//                    return true
//                }
//            }
        }
        return pointIsInside
    }

    // MARK: - if need change boundaries by x (override hitTest and point)

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if self.point(inside: point, with: event) {
            return self
        } else {
            //print(self.point(inside: point, with: event) )
            return nil
        }
    }
}

    // MARK: - for next time...

@objc(MyApplication) class MyApplication: UIApplication {

//    override func sendEvent(_ event: UIEvent) {
//        if event.type == .touches {
//            print("myapp", event)
//        }
//        super.sendEvent(event)
//    }

}

