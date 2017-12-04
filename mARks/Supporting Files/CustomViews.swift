//
//  CustomViews.swift
//  mARks
//
//  Created by Ejaz Merchant on 12/4/17.
//  Copyright © 2017 Ejaz Merchant. All rights reserved.
//

import Foundation
import UIKit

class PassThroughView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews {
            if !subview.isHidden && subview.alpha > 0 &&
            subview.isUserInteractionEnabled &&
                subview.point(inside: convert(point, to: subview), with: event) {
                return true
            }
        }
        return false
    }
}
