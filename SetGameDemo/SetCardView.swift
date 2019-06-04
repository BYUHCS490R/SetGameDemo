//
//  SetCardView.swift
//  SetGameDemo
//
//  Created by Christopher Slade on 6/3/19.
//  Copyright © 2019 Christopher Slade. All rights reserved.
//

import UIKit

@IBDesignable

class SetCardView: UIView {
    
    @IBInspectable//NOT THIS but use for number, shape, shade, color
    var cornerRadius: CGFloat = 25.0 { didSet { setNeedsDisplay() } }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        //Draw our shapes
        let path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        UIColor.white.setFill()
        path.fill();
        UIColor.blue.setStroke()
        path.lineWidth = 5.0
        path.stroke()
    }


}
