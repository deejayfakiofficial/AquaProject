//
//  ShapeView.swift
//  AquaProject
//
//  Created by Stanislav Terentyev on 28.12.2020.
//

import UIKit

class ShapeView: UIView {
    let lineWidth: CGFloat = 3.0
    var pathArray = [CGRect]()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func draw(_ rect: CGRect) {
        let pathRectMain = CGRect(x: 50, y: 50, width: rect.width - 100, height: rect.height - 100)
        let pathMain = UIBezierPath(roundedRect: pathRectMain, cornerRadius: 24)
        let colorMain = UIColor.yellow
        colorMain.setFill()
        pathMain.fill()
        pathMain.lineWidth = lineWidth
        UIColor.black.setStroke()
        pathMain.stroke()
        
        let pathRectFirst = CGRect(x: 200, y: 100, width: rect.width/17, height: rect.height/8)
        let pathFirst = UIBezierPath(roundedRect: pathRectFirst, cornerRadius: 24)
        let colorFirst = UIColor.blue
        colorFirst.setFill()
        pathFirst.fill()
        pathFirst.lineWidth = lineWidth
        UIColor.black.setStroke()
        pathFirst.stroke()
        pathArray.append(pathRectFirst)
        print (pathRectFirst.minX, pathRectFirst.minY,pathRectFirst.width,pathRectFirst.height)
        
        let pathRectSecond = CGRect(x: 200, y: 275, width: rect.width/17, height: rect.height/8)
        let pathSecond = UIBezierPath(roundedRect: pathRectSecond, cornerRadius: 24)
        let colorSecond = UIColor.green
        colorSecond.setFill()
        pathSecond.fill()
        pathSecond.lineWidth = lineWidth
        UIColor.black.setStroke()
        pathSecond.stroke()
        
        let pathRectThird = CGRect(x: 650, y: 100, width: rect.width/17, height: rect.height/8)
        let pathThird = UIBezierPath(roundedRect: pathRectThird, cornerRadius: 24)
        let colorThird = UIColor.red
        colorThird.setFill()
        pathThird.fill()
        pathThird.lineWidth = lineWidth
        UIColor.black.setStroke()
        pathThird.stroke()
        
        let pathRectFour = CGRect(x: 650, y: 275, width: rect.width/17, height: rect.height/8)
        let pathFour = UIBezierPath(roundedRect: pathRectFour, cornerRadius: 24)
        let colorFour = UIColor.orange
        colorFour.setFill()
        pathFour.fill()
        pathFour.lineWidth = lineWidth
        UIColor.black.setStroke()
        pathFour.stroke()
    }
    
}
