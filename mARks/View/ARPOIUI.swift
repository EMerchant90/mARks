//
//  ARPOIUI.swift
//  mARks
//
//  Created by Ejaz Merchant on 12/4/17.
//  Copyright © 2017 Ejaz Merchant. All rights reserved.
//

import UIKit

public class ARPOIUI : NSObject {
    
    //// Cache
    
    private struct Cache {
        static let locationBlue: UIColor = UIColor(red: 0.885, green: 0.566, blue: 0.100, alpha: 1.000)
    }
    
    //// Colors
    
    @objc dynamic public class var locationBlue: UIColor { return Cache.locationBlue }
    
    //// Drawing Methods
    
    @objc dynamic public class func drawTooltipLight(frame: CGRect = CGRect(x: 0, y: 0, width: 240, height: 70), color: UIColor = UIColor(red: 0.126, green: 0.582, blue: 1.000, alpha: 1.000), distanceText: String = "62.4", distUnitsText: String = "miles") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        // This non-generic function dramatically improves compilation times of complex expressions.
        func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }
        
        //// Color Declarations
        let tooltipBkgd = UIColor(red: 0.844, green: 0.886, blue: 0.899, alpha: 1.000)
        
        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.black.withAlphaComponent(0.47)
        shadow.shadowOffset = CGSize(width: 0, height: 1)
        shadow.shadowBlurRadius = 5
        
        
        //// Subframes
        let arrowFrame = CGRect(x: frame.minX + fastFloor((frame.width - 40) * 0.50000 + 0.5), y: frame.minY + frame.height - 33, width: 40, height: 33)
        
        
        //// tooltip Drawing
        let tooltipPath = UIBezierPath()
        tooltipPath.move(to: CGPoint(x: frame.maxX - 11.37, y: frame.minY + 3.72))
        tooltipPath.addLine(to: CGPoint(x: frame.maxX - 10.95, y: frame.minY + 3.82))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 4.82, y: frame.minY + 9.95), controlPoint1: CGPoint(x: frame.maxX - 8.1, y: frame.minY + 4.86), controlPoint2: CGPoint(x: frame.maxX - 5.86, y: frame.minY + 7.1))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 4, y: frame.minY + 19.82), controlPoint1: CGPoint(x: frame.maxX - 4, y: frame.minY + 12.55), controlPoint2: CGPoint(x: frame.maxX - 4, y: frame.minY + 14.97))
        tooltipPath.addLine(to: CGPoint(x: frame.maxX - 4, y: frame.maxY - 38.82))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 4.72, y: frame.maxY - 29.37), controlPoint1: CGPoint(x: frame.maxX - 4, y: frame.maxY - 33.97), controlPoint2: CGPoint(x: frame.maxX - 4, y: frame.maxY - 31.55))
        tooltipPath.addLine(to: CGPoint(x: frame.maxX - 4.82, y: frame.maxY - 28.95))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 10.95, y: frame.maxY - 22.82), controlPoint1: CGPoint(x: frame.maxX - 5.86, y: frame.maxY - 26.1), controlPoint2: CGPoint(x: frame.maxX - 8.1, y: frame.maxY - 23.86))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 20.82, y: frame.maxY - 22), controlPoint1: CGPoint(x: frame.maxX - 13.55, y: frame.maxY - 22), controlPoint2: CGPoint(x: frame.maxX - 15.97, y: frame.maxY - 22))
        tooltipPath.addLine(to: CGPoint(x: arrowFrame.maxX - 1.62, y: arrowFrame.maxY - 22))
        tooltipPath.addCurve(to: CGPoint(x: arrowFrame.maxX - 19.62, y: arrowFrame.maxY - 4), controlPoint1: CGPoint(x: arrowFrame.maxX - 4.26, y: arrowFrame.maxY - 19.36), controlPoint2: CGPoint(x: arrowFrame.maxX - 19.62, y: arrowFrame.maxY - 4))
        tooltipPath.addCurve(to: CGPoint(x: arrowFrame.minX + 2, y: arrowFrame.maxY - 22), controlPoint1: CGPoint(x: arrowFrame.maxX - 19.62, y: arrowFrame.maxY - 4), controlPoint2: CGPoint(x: arrowFrame.minX + 4.64, y: arrowFrame.maxY - 19.36))
        tooltipPath.addLine(to: CGPoint(x: frame.minX + 21.82, y: frame.maxY - 22))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 12.37, y: frame.maxY - 22.72), controlPoint1: CGPoint(x: frame.minX + 16.97, y: frame.maxY - 22), controlPoint2: CGPoint(x: frame.minX + 14.55, y: frame.maxY - 22))
        tooltipPath.addLine(to: CGPoint(x: frame.minX + 11.95, y: frame.maxY - 22.82))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 5.82, y: frame.maxY - 28.95), controlPoint1: CGPoint(x: frame.minX + 9.1, y: frame.maxY - 23.86), controlPoint2: CGPoint(x: frame.minX + 6.86, y: frame.maxY - 26.1))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 5, y: frame.maxY - 38.82), controlPoint1: CGPoint(x: frame.minX + 5, y: frame.maxY - 31.55), controlPoint2: CGPoint(x: frame.minX + 5, y: frame.maxY - 33.97))
        tooltipPath.addLine(to: CGPoint(x: frame.minX + 5, y: frame.minY + 19.82))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 5.72, y: frame.minY + 10.37), controlPoint1: CGPoint(x: frame.minX + 5, y: frame.minY + 14.97), controlPoint2: CGPoint(x: frame.minX + 5, y: frame.minY + 12.55))
        tooltipPath.addLine(to: CGPoint(x: frame.minX + 5.82, y: frame.minY + 9.95))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 11.95, y: frame.minY + 3.82), controlPoint1: CGPoint(x: frame.minX + 6.86, y: frame.minY + 7.1), controlPoint2: CGPoint(x: frame.minX + 9.1, y: frame.minY + 4.86))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 21.82, y: frame.minY + 3), controlPoint1: CGPoint(x: frame.minX + 14.55, y: frame.minY + 3), controlPoint2: CGPoint(x: frame.minX + 16.97, y: frame.minY + 3))
        tooltipPath.addLine(to: CGPoint(x: frame.maxX - 20.82, y: frame.minY + 3))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 11.37, y: frame.minY + 3.72), controlPoint1: CGPoint(x: frame.maxX - 15.97, y: frame.minY + 3), controlPoint2: CGPoint(x: frame.maxX - 13.55, y: frame.minY + 3))
        tooltipPath.close()
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        tooltipBkgd.setFill()
        tooltipPath.fill()
        context.restoreGState()
        
        
        
        //// distance group
        
        
        //// color box Drawing
        let colorBoxPath = UIBezierPath()
        colorBoxPath.move(to: CGPoint(x: frame.maxX - 11.37, y: frame.minY + 3.72))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 10.95, y: frame.minY + 3.82))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 4.82, y: frame.minY + 9.95), controlPoint1: CGPoint(x: frame.maxX - 8.1, y: frame.minY + 4.86), controlPoint2: CGPoint(x: frame.maxX - 5.86, y: frame.minY + 7.1))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 4, y: frame.minY + 19.82), controlPoint1: CGPoint(x: frame.maxX - 4, y: frame.minY + 12.55), controlPoint2: CGPoint(x: frame.maxX - 4, y: frame.minY + 14.97))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 4, y: frame.maxY - 38.82))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 4.72, y: frame.maxY - 29.37), controlPoint1: CGPoint(x: frame.maxX - 4, y: frame.maxY - 33.97), controlPoint2: CGPoint(x: frame.maxX - 4, y: frame.maxY - 31.55))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 4.82, y: frame.maxY - 28.95))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 10.95, y: frame.maxY - 22.82), controlPoint1: CGPoint(x: frame.maxX - 5.86, y: frame.maxY - 26.1), controlPoint2: CGPoint(x: frame.maxX - 8.1, y: frame.maxY - 23.86))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 20.82, y: frame.maxY - 22), controlPoint1: CGPoint(x: frame.maxX - 13.55, y: frame.maxY - 22), controlPoint2: CGPoint(x: frame.maxX - 15.97, y: frame.maxY - 22))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 63, y: frame.maxY - 22))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 63, y: frame.minY + 3), controlPoint1: CGPoint(x: frame.maxX - 63, y: frame.maxY - 34.71), controlPoint2: CGPoint(x: frame.maxX - 63, y: frame.minY + 11.89))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 20.82, y: frame.minY + 3))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 11.37, y: frame.minY + 3.72), controlPoint1: CGPoint(x: frame.maxX - 15.97, y: frame.minY + 3), controlPoint2: CGPoint(x: frame.maxX - 13.55, y: frame.minY + 3))
        colorBoxPath.close()
        color.setFill()
        colorBoxPath.fill()
        
        
        //// distance label Drawing
        let distanceLabelRect = CGRect(x: frame.minX + frame.width - 63, y: frame.minY + fastFloor((frame.height - 24) * 0.15217 + 0.5), width: 59, height: 24)
        let distanceLabelStyle = NSMutableParagraphStyle()
        distanceLabelStyle.alignment = .center
        let distanceLabelFontAttributes = [
            .font: UIFont.systemFont(ofSize: 21, weight: UIFont.Weight.medium),
            .foregroundColor: UIColor.white,
            .paragraphStyle: distanceLabelStyle,
            ] as [NSAttributedStringKey: Any]
        
        let distanceLabelTextHeight: CGFloat = distanceText.boundingRect(with: CGSize(width: distanceLabelRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: distanceLabelFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: distanceLabelRect)
        distanceText.draw(in: CGRect(x: distanceLabelRect.minX, y: distanceLabelRect.minY + (distanceLabelRect.height - distanceLabelTextHeight) / 2, width: distanceLabelRect.width, height: distanceLabelTextHeight), withAttributes: distanceLabelFontAttributes)
        context.restoreGState()
        
        
        //// distance units Drawing
        let distanceUnitsRect = CGRect(x: frame.minX + frame.width - 63, y: frame.minY + fastFloor((frame.height - 14) * 0.50000 + 0.5), width: 59, height: 14)
        let distanceUnitsStyle = NSMutableParagraphStyle()
        distanceUnitsStyle.alignment = .center
        let distanceUnitsFontAttributes = [
            .font: UIFont.systemFont(ofSize: 10, weight: UIFont.Weight.medium),
            .foregroundColor: UIColor.white,
            .paragraphStyle: distanceUnitsStyle,
            ] as [NSAttributedStringKey: Any]
        
        let distanceUnitsTextHeight: CGFloat = distUnitsText.boundingRect(with: CGSize(width: distanceUnitsRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: distanceUnitsFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: distanceUnitsRect)
        distUnitsText.draw(in: CGRect(x: distanceUnitsRect.minX, y: distanceUnitsRect.minY + (distanceUnitsRect.height - distanceUnitsTextHeight) / 2, width: distanceUnitsRect.width, height: distanceUnitsTextHeight), withAttributes: distanceUnitsFontAttributes)
        context.restoreGState()
    }
    
    @objc dynamic public class func drawIconRefresh(frame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 40), color: UIColor = UIColor(red: 0.126, green: 0.582, blue: 1.000, alpha: 1.000), down: Bool = true) {
        //// Color Declarations
        let black30 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 0.300)
        
        
        //// Subframes
        let group: CGRect = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: frame.height)
        
        
        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: group.minX + 0.89507 * group.width, y: group.minY + 0.22531 * group.height))
        bezierPath.addLine(to: CGPoint(x: group.minX + 0.89507 * group.width, y: group.minY + 0.05259 * group.height))
        bezierPath.addLine(to: CGPoint(x: group.minX + 0.89513 * group.width, y: group.minY + 0.05008 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.89561 * group.width, y: group.minY + 0.04510 * group.height), controlPoint1: CGPoint(x: group.minX + 0.89529 * group.width, y: group.minY + 0.04786 * group.height), controlPoint2: CGPoint(x: group.minX + 0.89529 * group.width, y: group.minY + 0.04730 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.89883 * group.width, y: group.minY + 0.03304 * group.height), controlPoint1: CGPoint(x: group.minX + 0.89620 * group.width, y: group.minY + 0.04097 * group.height), controlPoint2: CGPoint(x: group.minX + 0.89729 * group.width, y: group.minY + 0.03692 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.91133 * group.width, y: group.minY + 0.01453 * group.height), controlPoint1: CGPoint(x: group.minX + 0.90162 * group.width, y: group.minY + 0.02607 * group.height), controlPoint2: CGPoint(x: group.minX + 0.90591 * group.width, y: group.minY + 0.01971 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.93038 * group.width, y: group.minY + 0.00289 * group.height), controlPoint1: CGPoint(x: group.minX + 0.91676 * group.width, y: group.minY + 0.00934 * group.height), controlPoint2: CGPoint(x: group.minX + 0.92329 * group.width, y: group.minY + 0.00535 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.94255 * group.width, y: group.minY + 0.00023 * group.height), controlPoint1: CGPoint(x: group.minX + 0.93431 * group.width, y: group.minY + 0.00152 * group.height), controlPoint2: CGPoint(x: group.minX + 0.93841 * group.width, y: group.minY + 0.00063 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.94754 * group.width, y: group.minY + 0.00000 * group.height), controlPoint1: CGPoint(x: group.minX + 0.94476 * group.width, y: group.minY + 0.00002 * group.height), controlPoint2: CGPoint(x: group.minX + 0.94532 * group.width, y: group.minY + 0.00005 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.95004 * group.width, y: group.minY + 0.00006 * group.height), controlPoint1: CGPoint(x: group.minX + 0.94837 * group.width, y: group.minY + 0.00002 * group.height), controlPoint2: CGPoint(x: group.minX + 0.94920 * group.width, y: group.minY + 0.00004 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.95500 * group.width, y: group.minY + 0.00053 * group.height), controlPoint1: CGPoint(x: group.minX + 0.95225 * group.width, y: group.minY + 0.00022 * group.height), controlPoint2: CGPoint(x: group.minX + 0.95281 * group.width, y: group.minY + 0.00022 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.96703 * group.width, y: group.minY + 0.00376 * group.height), controlPoint1: CGPoint(x: group.minX + 0.95912 * group.width, y: group.minY + 0.00113 * group.height), controlPoint2: CGPoint(x: group.minX + 0.96317 * group.width, y: group.minY + 0.00221 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.98551 * group.width, y: group.minY + 0.01630 * group.height), controlPoint1: CGPoint(x: group.minX + 0.97400 * group.width, y: group.minY + 0.00656 * group.height), controlPoint2: CGPoint(x: group.minX + 0.98033 * group.width, y: group.minY + 0.01086 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.99711 * group.width, y: group.minY + 0.03538 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99068 * group.width, y: group.minY + 0.02174 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99467 * group.width, y: group.minY + 0.02829 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.99977 * group.width, y: group.minY + 0.04758 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99848 * group.width, y: group.minY + 0.03933 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99937 * group.width, y: group.minY + 0.04343 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.05259 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99998 * group.width, y: group.minY + 0.04980 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99995 * group.width, y: group.minY + 0.05036 * group.height))
        bezierPath.addLine(to: CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.35793 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.99977 * group.width, y: group.minY + 0.36294 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99995 * group.width, y: group.minY + 0.36016 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99998 * group.width, y: group.minY + 0.36071 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.99711 * group.width, y: group.minY + 0.37514 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99937 * group.width, y: group.minY + 0.36708 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99848 * group.width, y: group.minY + 0.37119 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.98551 * group.width, y: group.minY + 0.39422 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99467 * group.width, y: group.minY + 0.38223 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99068 * group.width, y: group.minY + 0.38878 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.96470 * group.width, y: group.minY + 0.40763 * group.height), controlPoint1: CGPoint(x: group.minX + 0.97975 * group.width, y: group.minY + 0.40027 * group.height), controlPoint2: CGPoint(x: group.minX + 0.97257 * group.width, y: group.minY + 0.40489 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.95253 * group.width, y: group.minY + 0.41028 * group.height), controlPoint1: CGPoint(x: group.minX + 0.96076 * group.width, y: group.minY + 0.40899 * group.height), controlPoint2: CGPoint(x: group.minX + 0.95667 * group.width, y: group.minY + 0.40988 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.94754 * group.width, y: group.minY + 0.41052 * group.height), controlPoint1: CGPoint(x: group.minX + 0.95032 * group.width, y: group.minY + 0.41049 * group.height), controlPoint2: CGPoint(x: group.minX + 0.94976 * group.width, y: group.minY + 0.41047 * group.height))
        bezierPath.addLine(to: CGPoint(x: group.minX + 0.64289 * group.width, y: group.minY + 0.41052 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.64040 * group.width, y: group.minY + 0.41046 * group.height), controlPoint1: CGPoint(x: group.minX + 0.64206 * group.width, y: group.minY + 0.41050 * group.height), controlPoint2: CGPoint(x: group.minX + 0.64122 * group.width, y: group.minY + 0.41050 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.63542 * group.width, y: group.minY + 0.40998 * group.height), controlPoint1: CGPoint(x: group.minX + 0.63873 * group.width, y: group.minY + 0.41038 * group.height), controlPoint2: CGPoint(x: group.minX + 0.63707 * group.width, y: group.minY + 0.41022 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.61666 * group.width, y: group.minY + 0.40347 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62883 * group.width, y: group.minY + 0.40904 * group.height), controlPoint2: CGPoint(x: group.minX + 0.62243 * group.width, y: group.minY + 0.40682 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.60492 * group.width, y: group.minY + 0.39422 * group.height), controlPoint1: CGPoint(x: group.minX + 0.61233 * group.width, y: group.minY + 0.40097 * group.height), controlPoint2: CGPoint(x: group.minX + 0.60837 * group.width, y: group.minY + 0.39785 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.59626 * group.width, y: group.minY + 0.38203 * group.height), controlPoint1: CGPoint(x: group.minX + 0.60147 * group.width, y: group.minY + 0.39060 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59855 * group.width, y: group.minY + 0.38648 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.59048 * group.width, y: group.minY + 0.36043 * group.height), controlPoint1: CGPoint(x: group.minX + 0.59282 * group.width, y: group.minY + 0.37535 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59084 * group.width, y: group.minY + 0.36794 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.59419 * group.width, y: group.minY + 0.33839 * group.height), controlPoint1: CGPoint(x: group.minX + 0.59013 * group.width, y: group.minY + 0.35293 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59140 * group.width, y: group.minY + 0.34537 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.60492 * group.width, y: group.minY + 0.32164 * group.height), controlPoint1: CGPoint(x: group.minX + 0.59666 * group.width, y: group.minY + 0.33219 * group.height), controlPoint2: CGPoint(x: group.minX + 0.60032 * group.width, y: group.minY + 0.32648 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.62109 * group.width, y: group.minY + 0.31010 * group.height), controlPoint1: CGPoint(x: group.minX + 0.60952 * group.width, y: group.minY + 0.31681 * group.height), controlPoint2: CGPoint(x: group.minX + 0.61504 * group.width, y: group.minY + 0.31287 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.63542 * group.width, y: group.minY + 0.30589 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62564 * group.width, y: group.minY + 0.30802 * group.height), controlPoint2: CGPoint(x: group.minX + 0.63048 * group.width, y: group.minY + 0.30660 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.64040 * group.width, y: group.minY + 0.30541 * group.height), controlPoint1: CGPoint(x: group.minX + 0.63707 * group.width, y: group.minY + 0.30565 * group.height), controlPoint2: CGPoint(x: group.minX + 0.63873 * group.width, y: group.minY + 0.30549 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.64289 * group.width, y: group.minY + 0.30535 * group.height), controlPoint1: CGPoint(x: group.minX + 0.64122 * group.width, y: group.minY + 0.30537 * group.height), controlPoint2: CGPoint(x: group.minX + 0.64206 * group.width, y: group.minY + 0.30537 * group.height))
        bezierPath.addLine(to: CGPoint(x: group.minX + 0.82198 * group.width, y: group.minY + 0.30535 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.77514 * group.width, y: group.minY + 0.24343 * group.height), controlPoint1: CGPoint(x: group.minX + 0.80847 * group.width, y: group.minY + 0.28322 * group.height), controlPoint2: CGPoint(x: group.minX + 0.79275 * group.width, y: group.minY + 0.26244 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.72169 * group.width, y: group.minY + 0.19548 * group.height), controlPoint1: CGPoint(x: group.minX + 0.75884 * group.width, y: group.minY + 0.22585 * group.height), controlPoint2: CGPoint(x: group.minX + 0.74092 * group.width, y: group.minY + 0.20978 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.65369 * group.width, y: group.minY + 0.15502 * group.height), controlPoint1: CGPoint(x: group.minX + 0.70048 * group.width, y: group.minY + 0.17972 * group.height), controlPoint2: CGPoint(x: group.minX + 0.67766 * group.width, y: group.minY + 0.16613 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.56174 * group.width, y: group.minY + 0.12580 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62442 * group.width, y: group.minY + 0.14146 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59346 * group.width, y: group.minY + 0.13162 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.43280 * group.width, y: group.minY + 0.12393 * group.height), controlPoint1: CGPoint(x: group.minX + 0.51927 * group.width, y: group.minY + 0.11800 * group.height), controlPoint2: CGPoint(x: group.minX + 0.47548 * group.width, y: group.minY + 0.11738 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.36774 * group.width, y: group.minY + 0.13983 * group.height), controlPoint1: CGPoint(x: group.minX + 0.41071 * group.width, y: group.minY + 0.12732 * group.height), controlPoint2: CGPoint(x: group.minX + 0.38891 * group.width, y: group.minY + 0.13264 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.25303 * group.width, y: group.minY + 0.20217 * group.height), controlPoint1: CGPoint(x: group.minX + 0.32632 * group.width, y: group.minY + 0.15388 * group.height), controlPoint2: CGPoint(x: group.minX + 0.28740 * group.width, y: group.minY + 0.17509 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.15735 * group.width, y: group.minY + 0.31226 * group.height), controlPoint1: CGPoint(x: group.minX + 0.21461 * group.width, y: group.minY + 0.23243 * group.height), controlPoint2: CGPoint(x: group.minX + 0.18197 * group.width, y: group.minY + 0.26996 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.12451 * group.width, y: group.minY + 0.38511 * group.height), controlPoint1: CGPoint(x: group.minX + 0.14393 * group.width, y: group.minY + 0.33532 * group.height), controlPoint2: CGPoint(x: group.minX + 0.13289 * group.width, y: group.minY + 0.35977 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.10836 * group.width, y: group.minY + 0.45532 * group.height), controlPoint1: CGPoint(x: group.minX + 0.11695 * group.width, y: group.minY + 0.40794 * group.height), controlPoint2: CGPoint(x: group.minX + 0.11154 * group.width, y: group.minY + 0.43148 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.11834 * group.width, y: group.minY + 0.60863 * group.height), controlPoint1: CGPoint(x: group.minX + 0.10155 * group.width, y: group.minY + 0.50641 * group.height), controlPoint2: CGPoint(x: group.minX + 0.10489 * group.width, y: group.minY + 0.55886 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.14206 * group.width, y: group.minY + 0.67298 * group.height), controlPoint1: CGPoint(x: group.minX + 0.12431 * group.width, y: group.minY + 0.63073 * group.height), controlPoint2: CGPoint(x: group.minX + 0.13226 * group.width, y: group.minY + 0.65230 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.18179 * group.width, y: group.minY + 0.73899 * group.height), controlPoint1: CGPoint(x: group.minX + 0.15307 * group.width, y: group.minY + 0.69624 * group.height), controlPoint2: CGPoint(x: group.minX + 0.16641 * group.width, y: group.minY + 0.71838 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.28337 * group.width, y: group.minY + 0.83374 * group.height), controlPoint1: CGPoint(x: group.minX + 0.20966 * group.width, y: group.minY + 0.77632 * group.height), controlPoint2: CGPoint(x: group.minX + 0.24421 * group.width, y: group.minY + 0.80857 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.38817 * group.width, y: group.minY + 0.88076 * group.height), controlPoint1: CGPoint(x: group.minX + 0.31571 * group.width, y: group.minY + 0.85454 * group.height), controlPoint2: CGPoint(x: group.minX + 0.35114 * group.width, y: group.minY + 0.87046 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.58787 * group.width, y: group.minY + 0.88274 * group.height), controlPoint1: CGPoint(x: group.minX + 0.45307 * group.width, y: group.minY + 0.89881 * group.height), controlPoint2: CGPoint(x: group.minX + 0.52262 * group.width, y: group.minY + 0.89949 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.69800 * group.width, y: group.minY + 0.83508 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62677 * group.width, y: group.minY + 0.87275 * group.height), controlPoint2: CGPoint(x: group.minX + 0.66405 * group.width, y: group.minY + 0.85659 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.76404 * group.width, y: group.minY + 0.78234 * group.height), controlPoint1: CGPoint(x: group.minX + 0.72183 * group.width, y: group.minY + 0.81997 * group.height), controlPoint2: CGPoint(x: group.minX + 0.74401 * group.width, y: group.minY + 0.80225 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.79153 * group.width, y: group.minY + 0.75197 * group.height), controlPoint1: CGPoint(x: group.minX + 0.77373 * group.width, y: group.minY + 0.77271 * group.height), controlPoint2: CGPoint(x: group.minX + 0.78289 * group.width, y: group.minY + 0.76256 * group.height))
        bezierPath.addLine(to: CGPoint(x: group.minX + 0.79242 * group.width, y: group.minY + 0.75088 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.79826 * group.width, y: group.minY + 0.74476 * group.height), controlPoint1: CGPoint(x: group.minX + 0.79490 * group.width, y: group.minY + 0.74806 * group.height), controlPoint2: CGPoint(x: group.minX + 0.79545 * group.width, y: group.minY + 0.74727 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.82461 * group.width, y: group.minY + 0.73217 * group.height), controlPoint1: CGPoint(x: group.minX + 0.80564 * group.width, y: group.minY + 0.73818 * group.height), controlPoint2: CGPoint(x: group.minX + 0.81486 * group.width, y: group.minY + 0.73378 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.84144 * group.width, y: group.minY + 0.73213 * group.height), controlPoint1: CGPoint(x: group.minX + 0.83017 * group.width, y: group.minY + 0.73125 * group.height), controlPoint2: CGPoint(x: group.minX + 0.83587 * group.width, y: group.minY + 0.73124 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.86456 * group.width, y: group.minY + 0.74195 * group.height), controlPoint1: CGPoint(x: group.minX + 0.84979 * group.width, y: group.minY + 0.73348 * group.height), controlPoint2: CGPoint(x: group.minX + 0.85779 * group.width, y: group.minY + 0.73687 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.87851 * group.width, y: group.minY + 0.75767 * group.height), controlPoint1: CGPoint(x: group.minX + 0.87020 * group.width, y: group.minY + 0.74618 * group.height), controlPoint2: CGPoint(x: group.minX + 0.87498 * group.width, y: group.minY + 0.75156 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.88451 * group.width, y: group.minY + 0.77343 * group.height), controlPoint1: CGPoint(x: group.minX + 0.88134 * group.width, y: group.minY + 0.76256 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88337 * group.width, y: group.minY + 0.76790 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.88522 * group.width, y: group.minY + 0.79029 * group.height), controlPoint1: CGPoint(x: group.minX + 0.88565 * group.width, y: group.minY + 0.77897 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88589 * group.width, y: group.minY + 0.78468 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.87862 * group.width, y: group.minY + 0.81026 * group.height), controlPoint1: CGPoint(x: group.minX + 0.88439 * group.width, y: group.minY + 0.79730 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88213 * group.width, y: group.minY + 0.80413 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.87637 * group.width, y: group.minY + 0.81384 * group.height), controlPoint1: CGPoint(x: group.minX + 0.87791 * group.width, y: group.minY + 0.81148 * group.height), controlPoint2: CGPoint(x: group.minX + 0.87716 * group.width, y: group.minY + 0.81268 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.87176 * group.width, y: group.minY + 0.81977 * group.height), controlPoint1: CGPoint(x: group.minX + 0.87495 * group.width, y: group.minY + 0.81591 * group.height), controlPoint2: CGPoint(x: group.minX + 0.87336 * group.width, y: group.minY + 0.81783 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.86639 * group.width, y: group.minY + 0.82622 * group.height), controlPoint1: CGPoint(x: group.minX + 0.86999 * group.width, y: group.minY + 0.82193 * group.height), controlPoint2: CGPoint(x: group.minX + 0.86820 * group.width, y: group.minY + 0.82408 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.84030 * group.width, y: group.minY + 0.85464 * group.height), controlPoint1: CGPoint(x: group.minX + 0.85807 * group.width, y: group.minY + 0.83602 * group.height), controlPoint2: CGPoint(x: group.minX + 0.84936 * group.width, y: group.minY + 0.84551 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.75408 * group.width, y: group.minY + 0.92397 * group.height), controlPoint1: CGPoint(x: group.minX + 0.81426 * group.width, y: group.minY + 0.88088 * group.height), controlPoint2: CGPoint(x: group.minX + 0.78529 * group.width, y: group.minY + 0.90418 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.66470 * group.width, y: group.minY + 0.96858 * group.height), controlPoint1: CGPoint(x: group.minX + 0.72590 * group.width, y: group.minY + 0.94183 * group.height), controlPoint2: CGPoint(x: group.minX + 0.69591 * group.width, y: group.minY + 0.95681 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.56439 * group.width, y: group.minY + 0.99464 * group.height), controlPoint1: CGPoint(x: group.minX + 0.63231 * group.width, y: group.minY + 0.98080 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59862 * group.width, y: group.minY + 0.98954 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.38076 * group.width, y: group.minY + 0.98736 * group.height), controlPoint1: CGPoint(x: group.minX + 0.50344 * group.width, y: group.minY + 1.00371 * group.height), controlPoint2: CGPoint(x: group.minX + 0.44080 * group.width, y: group.minY + 1.00127 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.26261 * group.width, y: group.minY + 0.94326 * group.height), controlPoint1: CGPoint(x: group.minX + 0.33970 * group.width, y: group.minY + 0.97785 * group.height), controlPoint2: CGPoint(x: group.minX + 0.29989 * group.width, y: group.minY + 0.96298 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.12387 * group.width, y: group.minY + 0.83408 * group.height), controlPoint1: CGPoint(x: group.minX + 0.21032 * group.width, y: group.minY + 0.91559 * group.height), controlPoint2: CGPoint(x: group.minX + 0.16312 * group.width, y: group.minY + 0.87841 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.04599 * group.width, y: group.minY + 0.71538 * group.height), controlPoint1: CGPoint(x: group.minX + 0.09240 * group.width, y: group.minY + 0.79853 * group.height), controlPoint2: CGPoint(x: group.minX + 0.06607 * group.width, y: group.minY + 0.75844 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.01063 * group.width, y: group.minY + 0.60938 * group.height), controlPoint1: CGPoint(x: group.minX + 0.03023 * group.width, y: group.minY + 0.68155 * group.height), controlPoint2: CGPoint(x: group.minX + 0.01833 * group.width, y: group.minY + 0.64591 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.00436 * group.width, y: group.minY + 0.44138 * group.height), controlPoint1: CGPoint(x: group.minX + -0.00099 * group.width, y: group.minY + 0.55429 * group.height), controlPoint2: CGPoint(x: group.minX + -0.00309 * group.width, y: group.minY + 0.49719 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.01952 * group.width, y: group.minY + 0.36937 * group.height), controlPoint1: CGPoint(x: group.minX + 0.00760 * group.width, y: group.minY + 0.41704 * group.height), controlPoint2: CGPoint(x: group.minX + 0.01267 * group.width, y: group.minY + 0.39295 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.06229 * group.width, y: group.minY + 0.26702 * group.height), controlPoint1: CGPoint(x: group.minX + 0.02985 * group.width, y: group.minY + 0.33377 * group.height), controlPoint2: CGPoint(x: group.minX + 0.04424 * group.width, y: group.minY + 0.29938 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.15898 * group.width, y: group.minY + 0.14438 * group.height), controlPoint1: CGPoint(x: group.minX + 0.08778 * group.width, y: group.minY + 0.22135 * group.height), controlPoint2: CGPoint(x: group.minX + 0.12055 * group.width, y: group.minY + 0.17981 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.22922 * group.width, y: group.minY + 0.09041 * group.height), controlPoint1: CGPoint(x: group.minX + 0.18072 * group.width, y: group.minY + 0.12434 * group.height), controlPoint2: CGPoint(x: group.minX + 0.20426 * group.width, y: group.minY + 0.10625 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.30313 * group.width, y: group.minY + 0.05190 * group.height), controlPoint1: CGPoint(x: group.minX + 0.25271 * group.width, y: group.minY + 0.07551 * group.height), controlPoint2: CGPoint(x: group.minX + 0.27746 * group.width, y: group.minY + 0.06261 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.41389 * group.width, y: group.minY + 0.02044 * group.height), controlPoint1: CGPoint(x: group.minX + 0.33865 * group.width, y: group.minY + 0.03709 * group.height), controlPoint2: CGPoint(x: group.minX + 0.37590 * group.width, y: group.minY + 0.02651 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.46334 * group.width, y: group.minY + 0.01510 * group.height), controlPoint1: CGPoint(x: group.minX + 0.43027 * group.width, y: group.minY + 0.01783 * group.height), controlPoint2: CGPoint(x: group.minX + 0.44678 * group.width, y: group.minY + 0.01604 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.48856 * group.width, y: group.minY + 0.01430 * group.height), controlPoint1: CGPoint(x: group.minX + 0.47174 * group.width, y: group.minY + 0.01461 * group.height), controlPoint2: CGPoint(x: group.minX + 0.48015 * group.width, y: group.minY + 0.01436 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.49412 * group.width, y: group.minY + 0.01429 * group.height), controlPoint1: CGPoint(x: group.minX + 0.49041 * group.width, y: group.minY + 0.01429 * group.height), controlPoint2: CGPoint(x: group.minX + 0.49226 * group.width, y: group.minY + 0.01429 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.51079 * group.width, y: group.minY + 0.01465 * group.height), controlPoint1: CGPoint(x: group.minX + 0.49968 * group.width, y: group.minY + 0.01433 * group.height), controlPoint2: CGPoint(x: group.minX + 0.50523 * group.width, y: group.minY + 0.01444 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.54373 * group.width, y: group.minY + 0.01702 * group.height), controlPoint1: CGPoint(x: group.minX + 0.52179 * group.width, y: group.minY + 0.01507 * group.height), controlPoint2: CGPoint(x: group.minX + 0.53278 * group.width, y: group.minY + 0.01586 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.63859 * group.width, y: group.minY + 0.03669 * group.height), controlPoint1: CGPoint(x: group.minX + 0.57589 * group.width, y: group.minY + 0.02041 * group.height), controlPoint2: CGPoint(x: group.minX + 0.60772 * group.width, y: group.minY + 0.02701 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.76598 * group.width, y: group.minY + 0.09810 * group.height), controlPoint1: CGPoint(x: group.minX + 0.68373 * group.width, y: group.minY + 0.05085 * group.height), controlPoint2: CGPoint(x: group.minX + 0.72676 * group.width, y: group.minY + 0.07162 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.87804 * group.width, y: group.minY + 0.20232 * group.height), controlPoint1: CGPoint(x: group.minX + 0.80842 * group.width, y: group.minY + 0.12676 * group.height), controlPoint2: CGPoint(x: group.minX + 0.84635 * group.width, y: group.minY + 0.16204 * group.height))
        bezierPath.addCurve(to: CGPoint(x: group.minX + 0.89507 * group.width, y: group.minY + 0.22531 * group.height), controlPoint1: CGPoint(x: group.minX + 0.88394 * group.width, y: group.minY + 0.20982 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88962 * group.width, y: group.minY + 0.21749 * group.height))
        bezierPath.close()
        bezierPath.usesEvenOddFillRule = true
        color.setFill()
        bezierPath.fill()
        
        
        if (down) {
            //// Bezier 2 Drawing
            let bezier2Path = UIBezierPath()
            bezier2Path.move(to: CGPoint(x: group.minX + 0.89507 * group.width, y: group.minY + 0.22531 * group.height))
            bezier2Path.addLine(to: CGPoint(x: group.minX + 0.89507 * group.width, y: group.minY + 0.05259 * group.height))
            bezier2Path.addLine(to: CGPoint(x: group.minX + 0.89513 * group.width, y: group.minY + 0.05008 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.89561 * group.width, y: group.minY + 0.04510 * group.height), controlPoint1: CGPoint(x: group.minX + 0.89529 * group.width, y: group.minY + 0.04786 * group.height), controlPoint2: CGPoint(x: group.minX + 0.89529 * group.width, y: group.minY + 0.04730 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.89883 * group.width, y: group.minY + 0.03304 * group.height), controlPoint1: CGPoint(x: group.minX + 0.89620 * group.width, y: group.minY + 0.04097 * group.height), controlPoint2: CGPoint(x: group.minX + 0.89729 * group.width, y: group.minY + 0.03692 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.91133 * group.width, y: group.minY + 0.01453 * group.height), controlPoint1: CGPoint(x: group.minX + 0.90162 * group.width, y: group.minY + 0.02607 * group.height), controlPoint2: CGPoint(x: group.minX + 0.90591 * group.width, y: group.minY + 0.01971 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.93038 * group.width, y: group.minY + 0.00289 * group.height), controlPoint1: CGPoint(x: group.minX + 0.91676 * group.width, y: group.minY + 0.00934 * group.height), controlPoint2: CGPoint(x: group.minX + 0.92329 * group.width, y: group.minY + 0.00535 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.94255 * group.width, y: group.minY + 0.00023 * group.height), controlPoint1: CGPoint(x: group.minX + 0.93431 * group.width, y: group.minY + 0.00152 * group.height), controlPoint2: CGPoint(x: group.minX + 0.93841 * group.width, y: group.minY + 0.00063 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.94754 * group.width, y: group.minY + 0.00000 * group.height), controlPoint1: CGPoint(x: group.minX + 0.94476 * group.width, y: group.minY + 0.00002 * group.height), controlPoint2: CGPoint(x: group.minX + 0.94532 * group.width, y: group.minY + 0.00005 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.95004 * group.width, y: group.minY + 0.00006 * group.height), controlPoint1: CGPoint(x: group.minX + 0.94837 * group.width, y: group.minY + 0.00002 * group.height), controlPoint2: CGPoint(x: group.minX + 0.94920 * group.width, y: group.minY + 0.00004 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.95500 * group.width, y: group.minY + 0.00053 * group.height), controlPoint1: CGPoint(x: group.minX + 0.95225 * group.width, y: group.minY + 0.00022 * group.height), controlPoint2: CGPoint(x: group.minX + 0.95281 * group.width, y: group.minY + 0.00022 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.96703 * group.width, y: group.minY + 0.00376 * group.height), controlPoint1: CGPoint(x: group.minX + 0.95912 * group.width, y: group.minY + 0.00113 * group.height), controlPoint2: CGPoint(x: group.minX + 0.96317 * group.width, y: group.minY + 0.00221 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.98551 * group.width, y: group.minY + 0.01630 * group.height), controlPoint1: CGPoint(x: group.minX + 0.97400 * group.width, y: group.minY + 0.00656 * group.height), controlPoint2: CGPoint(x: group.minX + 0.98033 * group.width, y: group.minY + 0.01086 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.99711 * group.width, y: group.minY + 0.03538 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99068 * group.width, y: group.minY + 0.02174 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99467 * group.width, y: group.minY + 0.02829 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.99977 * group.width, y: group.minY + 0.04758 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99848 * group.width, y: group.minY + 0.03933 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99937 * group.width, y: group.minY + 0.04343 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.05259 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99998 * group.width, y: group.minY + 0.04980 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99995 * group.width, y: group.minY + 0.05036 * group.height))
            bezier2Path.addLine(to: CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.35793 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.99977 * group.width, y: group.minY + 0.36294 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99995 * group.width, y: group.minY + 0.36016 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99998 * group.width, y: group.minY + 0.36071 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.99711 * group.width, y: group.minY + 0.37514 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99937 * group.width, y: group.minY + 0.36708 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99848 * group.width, y: group.minY + 0.37119 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.98551 * group.width, y: group.minY + 0.39422 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99467 * group.width, y: group.minY + 0.38223 * group.height), controlPoint2: CGPoint(x: group.minX + 0.99068 * group.width, y: group.minY + 0.38878 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.96470 * group.width, y: group.minY + 0.40763 * group.height), controlPoint1: CGPoint(x: group.minX + 0.97975 * group.width, y: group.minY + 0.40027 * group.height), controlPoint2: CGPoint(x: group.minX + 0.97257 * group.width, y: group.minY + 0.40489 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.95253 * group.width, y: group.minY + 0.41028 * group.height), controlPoint1: CGPoint(x: group.minX + 0.96076 * group.width, y: group.minY + 0.40899 * group.height), controlPoint2: CGPoint(x: group.minX + 0.95667 * group.width, y: group.minY + 0.40988 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.94754 * group.width, y: group.minY + 0.41052 * group.height), controlPoint1: CGPoint(x: group.minX + 0.95032 * group.width, y: group.minY + 0.41049 * group.height), controlPoint2: CGPoint(x: group.minX + 0.94976 * group.width, y: group.minY + 0.41047 * group.height))
            bezier2Path.addLine(to: CGPoint(x: group.minX + 0.64289 * group.width, y: group.minY + 0.41052 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.64040 * group.width, y: group.minY + 0.41046 * group.height), controlPoint1: CGPoint(x: group.minX + 0.64206 * group.width, y: group.minY + 0.41050 * group.height), controlPoint2: CGPoint(x: group.minX + 0.64122 * group.width, y: group.minY + 0.41050 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.63542 * group.width, y: group.minY + 0.40998 * group.height), controlPoint1: CGPoint(x: group.minX + 0.63873 * group.width, y: group.minY + 0.41038 * group.height), controlPoint2: CGPoint(x: group.minX + 0.63707 * group.width, y: group.minY + 0.41022 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.61666 * group.width, y: group.minY + 0.40347 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62883 * group.width, y: group.minY + 0.40904 * group.height), controlPoint2: CGPoint(x: group.minX + 0.62243 * group.width, y: group.minY + 0.40682 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.60492 * group.width, y: group.minY + 0.39422 * group.height), controlPoint1: CGPoint(x: group.minX + 0.61233 * group.width, y: group.minY + 0.40097 * group.height), controlPoint2: CGPoint(x: group.minX + 0.60837 * group.width, y: group.minY + 0.39785 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.59626 * group.width, y: group.minY + 0.38203 * group.height), controlPoint1: CGPoint(x: group.minX + 0.60147 * group.width, y: group.minY + 0.39060 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59855 * group.width, y: group.minY + 0.38648 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.59048 * group.width, y: group.minY + 0.36043 * group.height), controlPoint1: CGPoint(x: group.minX + 0.59282 * group.width, y: group.minY + 0.37535 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59084 * group.width, y: group.minY + 0.36794 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.59419 * group.width, y: group.minY + 0.33839 * group.height), controlPoint1: CGPoint(x: group.minX + 0.59013 * group.width, y: group.minY + 0.35293 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59140 * group.width, y: group.minY + 0.34537 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.60492 * group.width, y: group.minY + 0.32164 * group.height), controlPoint1: CGPoint(x: group.minX + 0.59666 * group.width, y: group.minY + 0.33219 * group.height), controlPoint2: CGPoint(x: group.minX + 0.60032 * group.width, y: group.minY + 0.32648 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.62109 * group.width, y: group.minY + 0.31010 * group.height), controlPoint1: CGPoint(x: group.minX + 0.60952 * group.width, y: group.minY + 0.31681 * group.height), controlPoint2: CGPoint(x: group.minX + 0.61504 * group.width, y: group.minY + 0.31287 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.63542 * group.width, y: group.minY + 0.30589 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62564 * group.width, y: group.minY + 0.30802 * group.height), controlPoint2: CGPoint(x: group.minX + 0.63048 * group.width, y: group.minY + 0.30660 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.64040 * group.width, y: group.minY + 0.30541 * group.height), controlPoint1: CGPoint(x: group.minX + 0.63707 * group.width, y: group.minY + 0.30565 * group.height), controlPoint2: CGPoint(x: group.minX + 0.63873 * group.width, y: group.minY + 0.30549 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.64289 * group.width, y: group.minY + 0.30535 * group.height), controlPoint1: CGPoint(x: group.minX + 0.64122 * group.width, y: group.minY + 0.30537 * group.height), controlPoint2: CGPoint(x: group.minX + 0.64206 * group.width, y: group.minY + 0.30537 * group.height))
            bezier2Path.addLine(to: CGPoint(x: group.minX + 0.82198 * group.width, y: group.minY + 0.30535 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.77514 * group.width, y: group.minY + 0.24343 * group.height), controlPoint1: CGPoint(x: group.minX + 0.80847 * group.width, y: group.minY + 0.28322 * group.height), controlPoint2: CGPoint(x: group.minX + 0.79275 * group.width, y: group.minY + 0.26244 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.72169 * group.width, y: group.minY + 0.19548 * group.height), controlPoint1: CGPoint(x: group.minX + 0.75884 * group.width, y: group.minY + 0.22585 * group.height), controlPoint2: CGPoint(x: group.minX + 0.74092 * group.width, y: group.minY + 0.20978 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.65369 * group.width, y: group.minY + 0.15502 * group.height), controlPoint1: CGPoint(x: group.minX + 0.70048 * group.width, y: group.minY + 0.17972 * group.height), controlPoint2: CGPoint(x: group.minX + 0.67766 * group.width, y: group.minY + 0.16613 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.56174 * group.width, y: group.minY + 0.12580 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62442 * group.width, y: group.minY + 0.14146 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59346 * group.width, y: group.minY + 0.13162 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.43280 * group.width, y: group.minY + 0.12393 * group.height), controlPoint1: CGPoint(x: group.minX + 0.51927 * group.width, y: group.minY + 0.11800 * group.height), controlPoint2: CGPoint(x: group.minX + 0.47548 * group.width, y: group.minY + 0.11738 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.36774 * group.width, y: group.minY + 0.13983 * group.height), controlPoint1: CGPoint(x: group.minX + 0.41071 * group.width, y: group.minY + 0.12732 * group.height), controlPoint2: CGPoint(x: group.minX + 0.38891 * group.width, y: group.minY + 0.13264 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.25303 * group.width, y: group.minY + 0.20217 * group.height), controlPoint1: CGPoint(x: group.minX + 0.32632 * group.width, y: group.minY + 0.15388 * group.height), controlPoint2: CGPoint(x: group.minX + 0.28740 * group.width, y: group.minY + 0.17509 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.15735 * group.width, y: group.minY + 0.31226 * group.height), controlPoint1: CGPoint(x: group.minX + 0.21461 * group.width, y: group.minY + 0.23243 * group.height), controlPoint2: CGPoint(x: group.minX + 0.18197 * group.width, y: group.minY + 0.26996 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.12451 * group.width, y: group.minY + 0.38511 * group.height), controlPoint1: CGPoint(x: group.minX + 0.14393 * group.width, y: group.minY + 0.33532 * group.height), controlPoint2: CGPoint(x: group.minX + 0.13289 * group.width, y: group.minY + 0.35977 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.10836 * group.width, y: group.minY + 0.45532 * group.height), controlPoint1: CGPoint(x: group.minX + 0.11695 * group.width, y: group.minY + 0.40794 * group.height), controlPoint2: CGPoint(x: group.minX + 0.11154 * group.width, y: group.minY + 0.43148 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.11834 * group.width, y: group.minY + 0.60863 * group.height), controlPoint1: CGPoint(x: group.minX + 0.10155 * group.width, y: group.minY + 0.50641 * group.height), controlPoint2: CGPoint(x: group.minX + 0.10489 * group.width, y: group.minY + 0.55886 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.14206 * group.width, y: group.minY + 0.67298 * group.height), controlPoint1: CGPoint(x: group.minX + 0.12431 * group.width, y: group.minY + 0.63073 * group.height), controlPoint2: CGPoint(x: group.minX + 0.13226 * group.width, y: group.minY + 0.65230 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.18179 * group.width, y: group.minY + 0.73899 * group.height), controlPoint1: CGPoint(x: group.minX + 0.15307 * group.width, y: group.minY + 0.69624 * group.height), controlPoint2: CGPoint(x: group.minX + 0.16641 * group.width, y: group.minY + 0.71838 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.28337 * group.width, y: group.minY + 0.83374 * group.height), controlPoint1: CGPoint(x: group.minX + 0.20966 * group.width, y: group.minY + 0.77632 * group.height), controlPoint2: CGPoint(x: group.minX + 0.24421 * group.width, y: group.minY + 0.80857 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.38817 * group.width, y: group.minY + 0.88076 * group.height), controlPoint1: CGPoint(x: group.minX + 0.31571 * group.width, y: group.minY + 0.85454 * group.height), controlPoint2: CGPoint(x: group.minX + 0.35114 * group.width, y: group.minY + 0.87046 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.58787 * group.width, y: group.minY + 0.88274 * group.height), controlPoint1: CGPoint(x: group.minX + 0.45307 * group.width, y: group.minY + 0.89881 * group.height), controlPoint2: CGPoint(x: group.minX + 0.52262 * group.width, y: group.minY + 0.89949 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.69800 * group.width, y: group.minY + 0.83508 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62677 * group.width, y: group.minY + 0.87275 * group.height), controlPoint2: CGPoint(x: group.minX + 0.66405 * group.width, y: group.minY + 0.85659 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.76404 * group.width, y: group.minY + 0.78234 * group.height), controlPoint1: CGPoint(x: group.minX + 0.72183 * group.width, y: group.minY + 0.81997 * group.height), controlPoint2: CGPoint(x: group.minX + 0.74401 * group.width, y: group.minY + 0.80225 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.79153 * group.width, y: group.minY + 0.75197 * group.height), controlPoint1: CGPoint(x: group.minX + 0.77373 * group.width, y: group.minY + 0.77271 * group.height), controlPoint2: CGPoint(x: group.minX + 0.78289 * group.width, y: group.minY + 0.76256 * group.height))
            bezier2Path.addLine(to: CGPoint(x: group.minX + 0.79242 * group.width, y: group.minY + 0.75088 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.79826 * group.width, y: group.minY + 0.74476 * group.height), controlPoint1: CGPoint(x: group.minX + 0.79490 * group.width, y: group.minY + 0.74806 * group.height), controlPoint2: CGPoint(x: group.minX + 0.79545 * group.width, y: group.minY + 0.74727 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.82461 * group.width, y: group.minY + 0.73217 * group.height), controlPoint1: CGPoint(x: group.minX + 0.80564 * group.width, y: group.minY + 0.73818 * group.height), controlPoint2: CGPoint(x: group.minX + 0.81486 * group.width, y: group.minY + 0.73378 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.84144 * group.width, y: group.minY + 0.73213 * group.height), controlPoint1: CGPoint(x: group.minX + 0.83017 * group.width, y: group.minY + 0.73125 * group.height), controlPoint2: CGPoint(x: group.minX + 0.83587 * group.width, y: group.minY + 0.73124 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.86456 * group.width, y: group.minY + 0.74195 * group.height), controlPoint1: CGPoint(x: group.minX + 0.84979 * group.width, y: group.minY + 0.73348 * group.height), controlPoint2: CGPoint(x: group.minX + 0.85779 * group.width, y: group.minY + 0.73687 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.87851 * group.width, y: group.minY + 0.75767 * group.height), controlPoint1: CGPoint(x: group.minX + 0.87020 * group.width, y: group.minY + 0.74618 * group.height), controlPoint2: CGPoint(x: group.minX + 0.87498 * group.width, y: group.minY + 0.75156 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.88451 * group.width, y: group.minY + 0.77343 * group.height), controlPoint1: CGPoint(x: group.minX + 0.88134 * group.width, y: group.minY + 0.76256 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88337 * group.width, y: group.minY + 0.76790 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.88522 * group.width, y: group.minY + 0.79029 * group.height), controlPoint1: CGPoint(x: group.minX + 0.88565 * group.width, y: group.minY + 0.77897 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88589 * group.width, y: group.minY + 0.78468 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.87862 * group.width, y: group.minY + 0.81026 * group.height), controlPoint1: CGPoint(x: group.minX + 0.88439 * group.width, y: group.minY + 0.79730 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88213 * group.width, y: group.minY + 0.80413 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.87637 * group.width, y: group.minY + 0.81384 * group.height), controlPoint1: CGPoint(x: group.minX + 0.87791 * group.width, y: group.minY + 0.81148 * group.height), controlPoint2: CGPoint(x: group.minX + 0.87716 * group.width, y: group.minY + 0.81268 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.87176 * group.width, y: group.minY + 0.81977 * group.height), controlPoint1: CGPoint(x: group.minX + 0.87495 * group.width, y: group.minY + 0.81591 * group.height), controlPoint2: CGPoint(x: group.minX + 0.87336 * group.width, y: group.minY + 0.81783 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.86639 * group.width, y: group.minY + 0.82622 * group.height), controlPoint1: CGPoint(x: group.minX + 0.86999 * group.width, y: group.minY + 0.82193 * group.height), controlPoint2: CGPoint(x: group.minX + 0.86820 * group.width, y: group.minY + 0.82408 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.84030 * group.width, y: group.minY + 0.85464 * group.height), controlPoint1: CGPoint(x: group.minX + 0.85807 * group.width, y: group.minY + 0.83602 * group.height), controlPoint2: CGPoint(x: group.minX + 0.84936 * group.width, y: group.minY + 0.84551 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.75408 * group.width, y: group.minY + 0.92397 * group.height), controlPoint1: CGPoint(x: group.minX + 0.81426 * group.width, y: group.minY + 0.88088 * group.height), controlPoint2: CGPoint(x: group.minX + 0.78529 * group.width, y: group.minY + 0.90418 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.66470 * group.width, y: group.minY + 0.96858 * group.height), controlPoint1: CGPoint(x: group.minX + 0.72590 * group.width, y: group.minY + 0.94183 * group.height), controlPoint2: CGPoint(x: group.minX + 0.69591 * group.width, y: group.minY + 0.95681 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.56439 * group.width, y: group.minY + 0.99464 * group.height), controlPoint1: CGPoint(x: group.minX + 0.63231 * group.width, y: group.minY + 0.98080 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59862 * group.width, y: group.minY + 0.98954 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.38076 * group.width, y: group.minY + 0.98736 * group.height), controlPoint1: CGPoint(x: group.minX + 0.50344 * group.width, y: group.minY + 1.00371 * group.height), controlPoint2: CGPoint(x: group.minX + 0.44080 * group.width, y: group.minY + 1.00127 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.26261 * group.width, y: group.minY + 0.94326 * group.height), controlPoint1: CGPoint(x: group.minX + 0.33970 * group.width, y: group.minY + 0.97785 * group.height), controlPoint2: CGPoint(x: group.minX + 0.29989 * group.width, y: group.minY + 0.96298 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.12387 * group.width, y: group.minY + 0.83408 * group.height), controlPoint1: CGPoint(x: group.minX + 0.21032 * group.width, y: group.minY + 0.91559 * group.height), controlPoint2: CGPoint(x: group.minX + 0.16312 * group.width, y: group.minY + 0.87841 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.04599 * group.width, y: group.minY + 0.71538 * group.height), controlPoint1: CGPoint(x: group.minX + 0.09240 * group.width, y: group.minY + 0.79853 * group.height), controlPoint2: CGPoint(x: group.minX + 0.06607 * group.width, y: group.minY + 0.75844 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.01063 * group.width, y: group.minY + 0.60938 * group.height), controlPoint1: CGPoint(x: group.minX + 0.03023 * group.width, y: group.minY + 0.68155 * group.height), controlPoint2: CGPoint(x: group.minX + 0.01833 * group.width, y: group.minY + 0.64591 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.00436 * group.width, y: group.minY + 0.44138 * group.height), controlPoint1: CGPoint(x: group.minX + -0.00099 * group.width, y: group.minY + 0.55429 * group.height), controlPoint2: CGPoint(x: group.minX + -0.00309 * group.width, y: group.minY + 0.49719 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.01952 * group.width, y: group.minY + 0.36937 * group.height), controlPoint1: CGPoint(x: group.minX + 0.00760 * group.width, y: group.minY + 0.41704 * group.height), controlPoint2: CGPoint(x: group.minX + 0.01267 * group.width, y: group.minY + 0.39295 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.06229 * group.width, y: group.minY + 0.26702 * group.height), controlPoint1: CGPoint(x: group.minX + 0.02985 * group.width, y: group.minY + 0.33377 * group.height), controlPoint2: CGPoint(x: group.minX + 0.04424 * group.width, y: group.minY + 0.29938 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.15898 * group.width, y: group.minY + 0.14438 * group.height), controlPoint1: CGPoint(x: group.minX + 0.08778 * group.width, y: group.minY + 0.22135 * group.height), controlPoint2: CGPoint(x: group.minX + 0.12055 * group.width, y: group.minY + 0.17981 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.22922 * group.width, y: group.minY + 0.09041 * group.height), controlPoint1: CGPoint(x: group.minX + 0.18072 * group.width, y: group.minY + 0.12434 * group.height), controlPoint2: CGPoint(x: group.minX + 0.20426 * group.width, y: group.minY + 0.10625 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.30313 * group.width, y: group.minY + 0.05190 * group.height), controlPoint1: CGPoint(x: group.minX + 0.25271 * group.width, y: group.minY + 0.07551 * group.height), controlPoint2: CGPoint(x: group.minX + 0.27746 * group.width, y: group.minY + 0.06261 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.41389 * group.width, y: group.minY + 0.02044 * group.height), controlPoint1: CGPoint(x: group.minX + 0.33865 * group.width, y: group.minY + 0.03709 * group.height), controlPoint2: CGPoint(x: group.minX + 0.37590 * group.width, y: group.minY + 0.02651 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.46334 * group.width, y: group.minY + 0.01510 * group.height), controlPoint1: CGPoint(x: group.minX + 0.43027 * group.width, y: group.minY + 0.01783 * group.height), controlPoint2: CGPoint(x: group.minX + 0.44678 * group.width, y: group.minY + 0.01604 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.48856 * group.width, y: group.minY + 0.01430 * group.height), controlPoint1: CGPoint(x: group.minX + 0.47174 * group.width, y: group.minY + 0.01461 * group.height), controlPoint2: CGPoint(x: group.minX + 0.48015 * group.width, y: group.minY + 0.01436 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.49412 * group.width, y: group.minY + 0.01429 * group.height), controlPoint1: CGPoint(x: group.minX + 0.49041 * group.width, y: group.minY + 0.01429 * group.height), controlPoint2: CGPoint(x: group.minX + 0.49226 * group.width, y: group.minY + 0.01429 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.51079 * group.width, y: group.minY + 0.01465 * group.height), controlPoint1: CGPoint(x: group.minX + 0.49968 * group.width, y: group.minY + 0.01433 * group.height), controlPoint2: CGPoint(x: group.minX + 0.50523 * group.width, y: group.minY + 0.01444 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.54373 * group.width, y: group.minY + 0.01702 * group.height), controlPoint1: CGPoint(x: group.minX + 0.52179 * group.width, y: group.minY + 0.01507 * group.height), controlPoint2: CGPoint(x: group.minX + 0.53278 * group.width, y: group.minY + 0.01586 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.63859 * group.width, y: group.minY + 0.03669 * group.height), controlPoint1: CGPoint(x: group.minX + 0.57589 * group.width, y: group.minY + 0.02041 * group.height), controlPoint2: CGPoint(x: group.minX + 0.60772 * group.width, y: group.minY + 0.02701 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.76598 * group.width, y: group.minY + 0.09810 * group.height), controlPoint1: CGPoint(x: group.minX + 0.68373 * group.width, y: group.minY + 0.05085 * group.height), controlPoint2: CGPoint(x: group.minX + 0.72676 * group.width, y: group.minY + 0.07162 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.87804 * group.width, y: group.minY + 0.20232 * group.height), controlPoint1: CGPoint(x: group.minX + 0.80842 * group.width, y: group.minY + 0.12676 * group.height), controlPoint2: CGPoint(x: group.minX + 0.84635 * group.width, y: group.minY + 0.16204 * group.height))
            bezier2Path.addCurve(to: CGPoint(x: group.minX + 0.89507 * group.width, y: group.minY + 0.22531 * group.height), controlPoint1: CGPoint(x: group.minX + 0.88394 * group.width, y: group.minY + 0.20982 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88962 * group.width, y: group.minY + 0.21749 * group.height))
            bezier2Path.close()
            bezier2Path.usesEvenOddFillRule = true
            black30.setFill()
            bezier2Path.fill()
        }
    }
    
    @objc dynamic public class func drawTooltipDark(frame: CGRect = CGRect(x: 0, y: 0, width: 240, height: 70), distanceText: String = "62.4", distUnitsText: String = "miles") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        // This non-generic function dramatically improves compilation times of complex expressions.
        func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }
        
        
        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.black.withAlphaComponent(0.47)
        shadow.shadowOffset = CGSize(width: 0, height: 1)
        shadow.shadowBlurRadius = 5
        
        
        //// Subframes
        let arrowFrame = CGRect(x: frame.minX + fastFloor((frame.width - 40) * 0.50000 + 0.5), y: frame.minY + frame.height - 33, width: 40, height: 33)
        
        
        //// tooltip Drawing
        let tooltipPath = UIBezierPath()
        tooltipPath.move(to: CGPoint(x: frame.maxX - 11.37, y: frame.minY + 3.72))
        tooltipPath.addLine(to: CGPoint(x: frame.maxX - 10.95, y: frame.minY + 3.82))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 4.82, y: frame.minY + 9.95), controlPoint1: CGPoint(x: frame.maxX - 8.1, y: frame.minY + 4.86), controlPoint2: CGPoint(x: frame.maxX - 5.86, y: frame.minY + 7.1))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 4, y: frame.minY + 19.82), controlPoint1: CGPoint(x: frame.maxX - 4, y: frame.minY + 12.55), controlPoint2: CGPoint(x: frame.maxX - 4, y: frame.minY + 14.97))
        tooltipPath.addLine(to: CGPoint(x: frame.maxX - 4, y: frame.maxY - 38.82))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 4.72, y: frame.maxY - 29.37), controlPoint1: CGPoint(x: frame.maxX - 4, y: frame.maxY - 33.97), controlPoint2: CGPoint(x: frame.maxX - 4, y: frame.maxY - 31.55))
        tooltipPath.addLine(to: CGPoint(x: frame.maxX - 4.82, y: frame.maxY - 28.95))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 10.95, y: frame.maxY - 22.82), controlPoint1: CGPoint(x: frame.maxX - 5.86, y: frame.maxY - 26.1), controlPoint2: CGPoint(x: frame.maxX - 8.1, y: frame.maxY - 23.86))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 20.82, y: frame.maxY - 22), controlPoint1: CGPoint(x: frame.maxX - 13.55, y: frame.maxY - 22), controlPoint2: CGPoint(x: frame.maxX - 15.97, y: frame.maxY - 22))
        tooltipPath.addLine(to: CGPoint(x: arrowFrame.maxX - 1.62, y: arrowFrame.maxY - 22))
        tooltipPath.addCurve(to: CGPoint(x: arrowFrame.maxX - 19.62, y: arrowFrame.maxY - 4), controlPoint1: CGPoint(x: arrowFrame.maxX - 4.26, y: arrowFrame.maxY - 19.36), controlPoint2: CGPoint(x: arrowFrame.maxX - 19.62, y: arrowFrame.maxY - 4))
        tooltipPath.addCurve(to: CGPoint(x: arrowFrame.minX + 2, y: arrowFrame.maxY - 22), controlPoint1: CGPoint(x: arrowFrame.maxX - 19.62, y: arrowFrame.maxY - 4), controlPoint2: CGPoint(x: arrowFrame.minX + 4.64, y: arrowFrame.maxY - 19.36))
        tooltipPath.addLine(to: CGPoint(x: frame.minX + 21.82, y: frame.maxY - 22))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 12.37, y: frame.maxY - 22.72), controlPoint1: CGPoint(x: frame.minX + 16.97, y: frame.maxY - 22), controlPoint2: CGPoint(x: frame.minX + 14.55, y: frame.maxY - 22))
        tooltipPath.addLine(to: CGPoint(x: frame.minX + 11.95, y: frame.maxY - 22.82))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 5.82, y: frame.maxY - 28.95), controlPoint1: CGPoint(x: frame.minX + 9.1, y: frame.maxY - 23.86), controlPoint2: CGPoint(x: frame.minX + 6.86, y: frame.maxY - 26.1))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 5, y: frame.maxY - 38.82), controlPoint1: CGPoint(x: frame.minX + 5, y: frame.maxY - 31.55), controlPoint2: CGPoint(x: frame.minX + 5, y: frame.maxY - 33.97))
        tooltipPath.addLine(to: CGPoint(x: frame.minX + 5, y: frame.minY + 19.82))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 5.72, y: frame.minY + 10.37), controlPoint1: CGPoint(x: frame.minX + 5, y: frame.minY + 14.97), controlPoint2: CGPoint(x: frame.minX + 5, y: frame.minY + 12.55))
        tooltipPath.addLine(to: CGPoint(x: frame.minX + 5.82, y: frame.minY + 9.95))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 11.95, y: frame.minY + 3.82), controlPoint1: CGPoint(x: frame.minX + 6.86, y: frame.minY + 7.1), controlPoint2: CGPoint(x: frame.minX + 9.1, y: frame.minY + 4.86))
        tooltipPath.addCurve(to: CGPoint(x: frame.minX + 21.82, y: frame.minY + 3), controlPoint1: CGPoint(x: frame.minX + 14.55, y: frame.minY + 3), controlPoint2: CGPoint(x: frame.minX + 16.97, y: frame.minY + 3))
        tooltipPath.addLine(to: CGPoint(x: frame.maxX - 20.82, y: frame.minY + 3))
        tooltipPath.addCurve(to: CGPoint(x: frame.maxX - 11.37, y: frame.minY + 3.72), controlPoint1: CGPoint(x: frame.maxX - 15.97, y: frame.minY + 3), controlPoint2: CGPoint(x: frame.maxX - 13.55, y: frame.minY + 3))
        tooltipPath.close()
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        UIColor.black.setFill()
        tooltipPath.fill()
        context.restoreGState()
        
        
        
        //// distance group
        
        
        //// color box Drawing
        let colorBoxPath = UIBezierPath()
        colorBoxPath.move(to: CGPoint(x: frame.maxX - 11.37, y: frame.minY + 3.72))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 10.95, y: frame.minY + 3.82))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 4.82, y: frame.minY + 9.95), controlPoint1: CGPoint(x: frame.maxX - 8.1, y: frame.minY + 4.86), controlPoint2: CGPoint(x: frame.maxX - 5.86, y: frame.minY + 7.1))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 4, y: frame.minY + 19.82), controlPoint1: CGPoint(x: frame.maxX - 4, y: frame.minY + 12.55), controlPoint2: CGPoint(x: frame.maxX - 4, y: frame.minY + 14.97))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 4, y: frame.maxY - 38.82))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 4.72, y: frame.maxY - 29.37), controlPoint1: CGPoint(x: frame.maxX - 4, y: frame.maxY - 33.97), controlPoint2: CGPoint(x: frame.maxX - 4, y: frame.maxY - 31.55))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 4.82, y: frame.maxY - 28.95))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 10.95, y: frame.maxY - 22.82), controlPoint1: CGPoint(x: frame.maxX - 5.86, y: frame.maxY - 26.1), controlPoint2: CGPoint(x: frame.maxX - 8.1, y: frame.maxY - 23.86))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 20.82, y: frame.maxY - 22), controlPoint1: CGPoint(x: frame.maxX - 13.55, y: frame.maxY - 22), controlPoint2: CGPoint(x: frame.maxX - 15.97, y: frame.maxY - 22))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 63, y: frame.maxY - 22))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 63, y: frame.minY + 3), controlPoint1: CGPoint(x: frame.maxX - 63, y: frame.maxY - 34.71), controlPoint2: CGPoint(x: frame.maxX - 63, y: frame.minY + 11.89))
        colorBoxPath.addLine(to: CGPoint(x: frame.maxX - 20.82, y: frame.minY + 3))
        colorBoxPath.addCurve(to: CGPoint(x: frame.maxX - 11.37, y: frame.minY + 3.72), controlPoint1: CGPoint(x: frame.maxX - 15.97, y: frame.minY + 3), controlPoint2: CGPoint(x: frame.maxX - 13.55, y: frame.minY + 3))
        colorBoxPath.close()
        UIColor.darkGray.setFill()
        colorBoxPath.fill()
        
        //// distance label Drawing
        let distanceLabelRect = CGRect(x: frame.minX + frame.width - 63, y: frame.minY + fastFloor((frame.height - 24) * 0.15217 + 0.5), width: 59, height: 24)
        let distanceLabelStyle = NSMutableParagraphStyle()
        distanceLabelStyle.alignment = .center
        let distanceLabelFontAttributes = [
            .font: UIFont.systemFont(ofSize: 21, weight: UIFont.Weight.medium),
            .foregroundColor: UIColor.white,
            .paragraphStyle: distanceLabelStyle,
            ] as [NSAttributedStringKey: Any]
        
        let distanceLabelTextHeight: CGFloat = distanceText.boundingRect(with: CGSize(width: distanceLabelRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: distanceLabelFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: distanceLabelRect)
        distanceText.draw(in: CGRect(x: distanceLabelRect.minX, y: distanceLabelRect.minY + (distanceLabelRect.height - distanceLabelTextHeight) / 2, width: distanceLabelRect.width, height: distanceLabelTextHeight), withAttributes: distanceLabelFontAttributes)
        context.restoreGState()
        
        
        //// distance units Drawing
        let distanceUnitsRect = CGRect(x: frame.minX + frame.width - 63, y: frame.minY + fastFloor((frame.height - 14) * 0.50000 + 0.5), width: 59, height: 14)
        let distanceUnitsStyle = NSMutableParagraphStyle()
        distanceUnitsStyle.alignment = .center
        let distanceUnitsFontAttributes = [
            .font: UIFont.systemFont(ofSize: 10, weight: UIFont.Weight.medium),
            .foregroundColor: UIColor.white,
            .paragraphStyle: distanceUnitsStyle,
            ] as [NSAttributedStringKey: Any]
        
        let distanceUnitsTextHeight: CGFloat = distUnitsText.boundingRect(with: CGSize(width: distanceUnitsRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: distanceUnitsFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: distanceUnitsRect)
        distUnitsText.draw(in: CGRect(x: distanceUnitsRect.minX, y: distanceUnitsRect.minY + (distanceUnitsRect.height - distanceUnitsTextHeight) / 2, width: distanceUnitsRect.width, height: distanceUnitsTextHeight), withAttributes: distanceUnitsFontAttributes)
        context.restoreGState()
    }
    
}
