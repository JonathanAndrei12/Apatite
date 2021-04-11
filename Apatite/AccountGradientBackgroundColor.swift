//
//  AccountGradientBackgroundColor.swift
//  Apatite
//
//  Created by Jonathan Andrei on 11/04/21.
//

import Foundation
import SwiftUI
import UIKit

//class AccountBackgroundColors {
//    let colorTop = UIColor(hex: "#009CEB")
//    let colorBottom = UIColor.white.cgColor
//
//    let gl: CAGradientLayer
//
//    init() {
//        gl = CAGradientLayer()
//        gl.colors = [colorTop, colorBottom]
//        gl.locations = [ 0.0, 1.0]
//    }
//}

class AccountBackgroundColors {
    var gl:CAGradientLayer!

    init() {
        let colorTop = UIColor(hex: "#009CEB")?.cgColor
        let colorBottom = UIColor.white.cgColor
        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
}


extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
