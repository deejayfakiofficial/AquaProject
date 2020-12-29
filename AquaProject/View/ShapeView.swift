//
//  ShapeView.swift
//  AquaProject
//
//  Created by Stanislav Terentyev on 28.12.2020.
//

import UIKit

class ShapeView: UIView {
    
    let lineWidth: CGFloat = 3.0
    var pathArray = [CAShapeLayer]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
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
    }
    
    private func addLayer (x: CGFloat, y: CGFloat, fillColor: UIColor, strokeColor: UIColor) -> CAShapeLayer {
        let path = CAShapeLayer()
        path.path = createRect(x: x, y: y).cgPath
        path.fillColor = fillColor.cgColor
        path.strokeColor = strokeColor.cgColor
        path.lineWidth = lineWidth
        return path
    }
    
    private func createRect(x:CGFloat, y:CGFloat) -> UIBezierPath {
        let pathRect = CGRect(x: x, y: y, width: 50, height: 50)
        let path = UIBezierPath(roundedRect: pathRect, cornerRadius: 24)
        path.fill()
        path.lineWidth = lineWidth
        UIColor.black.setStroke()
        path.stroke()
        return path
    }

    private func setup () {
        let pathOne = addLayer(x: 200, y: 100, fillColor: .red, strokeColor: .black)
        self.layer.addSublayer(pathOne)
        let pathTwo = addLayer(x: 650, y: 100, fillColor: .blue, strokeColor: .black)
        self.layer.addSublayer(pathTwo)
        let pathThree = addLayer(x: 200, y: 275, fillColor: .green, strokeColor: .black)
        self.layer.addSublayer(pathThree)
        let pathFour = addLayer(x: 650, y: 275, fillColor: .gray, strokeColor: .black)
        self.layer.addSublayer(pathFour)
        pathArray.append(pathOne)
        pathArray.append(pathTwo)
        pathArray.append(pathThree)
        pathArray.append(pathFour)
        print(pathArray)
    }
    
//    func animatePath () {
//        let startPoint = CGPoint(x: 200, y: 100)
//        let endPoint = CGPoint(x: 200, y: 200)
//        let duration = 4.0
//        let positionAnimation = positionAnimationFunc(startingPoint: startPoint, endPoint: endPoint, animationDuration: duration)
//        let scaleAnimation = scaleAnimationFunc(startingScale: 1.0, endingScale: 0.2, animationDuration: 2.5)
//        self.layer.add(scaleAnimation, forKey: "scale")
//    }
//
//    private func scaleAnimationFunc(startingScale: CGFloat, endingScale: CGFloat, animationDuration: Double) -> CABasicAnimation {
//        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
//        scaleAnimation.fromValue = startingScale
//        scaleAnimation.toValue = endingScale
//        scaleAnimation.duration = animationDuration
//        scaleAnimation.autoreverses = true
//        return scaleAnimation
//    }
//
//    private func positionAnimationFunc (startingPoint: CGPoint, endPoint: CGPoint, animationDuration: Double) -> CABasicAnimation {
//        let positionAnimation = CABasicAnimation(keyPath: "position")
//        positionAnimation.fromValue = NSValue(cgPoint: startingPoint)
//        positionAnimation.toValue = NSValue(cgPoint: endPoint)
//        positionAnimation.duration = animationDuration
//        positionAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
//        return positionAnimation
//    }
}
    
//        let pathRectFirst = CGRect(x: 200, y: 100, width: rect.width/17, height: rect.height/8)
//        let pathFirst = UIBezierPath(roundedRect: pathRectFirst, cornerRadius: 24)
//        let colorFirst = UIColor.blue
//        colorFirst.setFill()
//        pathFirst.fill()
//        pathFirst.lineWidth = lineWidth
//        UIColor.black.setStroke()
//        pathFirst.stroke()
//
//        let pathRectSecond = CGRect(x: 200, y: 275, width: rect.width/17, height: rect.height/8)
//        let pathSecond = UIBezierPath(roundedRect: pathRectSecond, cornerRadius: 24)
//        let colorSecond = UIColor.green
//        colorSecond.setFill()
//        pathSecond.fill()
//        pathSecond.lineWidth = lineWidth
//        UIColor.black.setStroke()
//        pathSecond.stroke()
//
//        let pathRectThird = CGRect(x: 650, y: 100, width: rect.width/17, height: rect.height/8)
//        let pathThird = UIBezierPath(roundedRect: pathRectThird, cornerRadius: 24)
//        let colorThird = UIColor.red
//        colorThird.setFill()
//        pathThird.fill()
//        pathThird.lineWidth = lineWidth
//        UIColor.black.setStroke()
//        pathThird.stroke()
//
//        let pathRectFour = CGRect(x: 650, y: 275, width: rect.width/17, height: rect.height/8)
//        let pathFour = UIBezierPath(roundedRect: pathRectFour, cornerRadius: 24)
//        let colorFour = UIColor.orange
//        colorFour.setFill()
//        pathFour.fill()
//        pathFour.lineWidth = lineWidth
//        UIColor.black.setStroke()
//        pathFour.stroke()
        
        //        let pathOne = CAShapeLayer()
        //        pathOne.path = createRect(x: 200, y: 100).cgPath
        //        pathOne.fillColor = UIColor.red.cgColor
        //        pathOne.strokeColor = UIColor.black.cgColor
        //        pathOne.lineWidth = lineWidth
        ////                pathOne.position = CGPoint(x: 200, y: 100)
        //        self.layer.addSublayer(pathOne)
        //        let pathTwo = CAShapeLayer()
        //        pathTwo.path = createRect(x: pathOne.path!.currentPoint.x + 400, y: pathOne.path!.currentPoint.y).cgPath
        //        pathTwo.fillColor = UIColor.blue.cgColor
        //        pathTwo.strokeColor = UIColor.black.cgColor
        //        pathTwo.lineWidth = lineWidth
        //        self.layer.addSublayer(pathTwo)
        //        let pathThree = CAShapeLayer()
        //        pathThree.path = createRect(x: 200, y: pathOne.path!.currentPoint.y + 175).cgPath
        //        pathThree.fillColor = UIColor.green.cgColor
        //        pathThree.strokeColor = UIColor.black.cgColor
        //        pathThree.lineWidth = lineWidth
        //        self.layer.addSublayer(pathThree)
        //        let pathFour = CAShapeLayer()
        //        pathFour.path = createRect(x: pathOne.path!.currentPoint.x + 400, y: pathOne.path!.currentPoint.y + 175).cgPath
        //        pathFour.fillColor = UIColor.gray.cgColor
        //        pathFour.strokeColor = UIColor.black.cgColor
        //        pathFour.lineWidth = lineWidth
        //        self.layer.addSublayer(pathFour)
   
