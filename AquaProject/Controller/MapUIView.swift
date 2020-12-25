//
//  MapUIView.swift
//  AquaProject
//
//  Created by Stanislav Terentyev on 25.12.2020.
//

import Foundation
import UIKit
class MapUIView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
//        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        setup()
    }
//
//    func setup() {
//        let lineShapeLayer = CAShapeLayer()
//        lineShapeLayer.path = createBezierPath().cgPath
//        lineShapeLayer.strokeColor = UIColor.blue.cgColor
//        lineShapeLayer.fillColor = UIColor.white.cgColor
//        lineShapeLayer.lineWidth = 2.0
//        lineShapeLayer.position = CGPoint(x: 0, y: 0)
////        let ovalShapeLayer = CAShapeLayer()
////        ovalShapeLayer.path = createOvalPath(x: 50, y: 50).cgPath
////        ovalShapeLayer.strokeColor = UIColor.blue.cgColor
////        ovalShapeLayer.fillColor = UIColor.white.cgColor
////        ovalShapeLayer.lineWidth = 5.0
////        ovalShapeLayer.position = CGPoint(x: 30, y: 30)
//        //        let ovalShapeLayerTwo = CAShapeLayer()
//        //        ovalShapeLayerTwo.path = createOvalPath(x: 100, y: 100).cgPath
//        self.layer.addSublayer(lineShapeLayer)
////        self.layer.addSublayer(ovalShapeLayer)
////        self.layer.addSublayer(ovalShapeLayerTwo)
//    }
//
//    func createOvalPath(x:CGFloat, y:CGFloat) -> UIBezierPath {
//        let ovalPath = UIBezierPath(ovalIn: CGRect(x: x, y: y, width: 10, height: 10))
//        UIColor.gray.setFill()
//        ovalPath.fill()
//        return ovalPath
//    }
//
//    func createBezierPath() -> UIBezierPath {
//        let path = UIBezierPath()
//        //Администрация
//        path.move(to: CGPoint(x: 40, y: 40))
//        path.addLine(to: CGPoint(x: 80, y: 40))
//        path.addLine(to: CGPoint(x: 80, y: 80))
//        path.addLine(to: CGPoint(x: 40, y: 80))
//        path.addLine(to: CGPoint(x: 40, y: 40))
//        path.addLine(to: CGPoint(x: 60, y: 20))
//        path.addLine(to: CGPoint(x: 80, y: 40))
//        path.move(to: CGPoint(x: 60, y: 80))
//        path.addLine(to: CGPoint(x: 60, y: 60))
//        path.close()
//        path.addLine(to: CGPoint(x: 50, y: 70))
//        path.move(to: CGPoint(x: 60, y: 80))
//        path.addLine(to: CGPoint(x: 70, y: 70))
//        path.close()
//        path.move(to: CGPoint(x: 60, y: 60))
//        path.addArc(withCenter: CGPoint(x: 60, y: 60),
//                    radius: 5,
//                    startAngle: CGFloat(Double.pi),
//                    endAngle: CGFloat(4*Double.pi),
//                    clockwise: true)
//        path.close()
//        path.move(to: CGPoint(x: 100, y: 60))
//        //Чекпоинт администрации
//        path.addArc(withCenter:CGPoint(x: 100, y: 60),
//                    radius: 7,
//                    startAngle: CGFloat(Double.pi),
//                    endAngle: CGFloat(3*Double.pi),
//                    clockwise: true)
//        path.close()
//
//        //Чекпоинт бассейна
//
//        path.close()
//        path.move(to: CGPoint(x: 220, y: 140))
//        //Бассейн
//        path.addLine(to: CGPoint(x: 220, y: 50))
//        path.addLine(to: CGPoint(x: 300, y: 50))
//        path.addLine(to: CGPoint(x: 300, y: 140))
//        path.close()
//        path.move(to: CGPoint(x: 200, y: 60))
//        path.addArc(withCenter:CGPoint(x: 200, y: 60),
//                    radius: 7,
//                    startAngle: CGFloat(Double.pi),
//                    endAngle: CGFloat(3*Double.pi),
//                    clockwise: true)
//
//        path.move(to: CGPoint(x: 400, y: 50))
//        //Чекпоинт пляжа
//        path.addArc(withCenter:CGPoint(x: 400, y: 50),
//                    radius: 7,
//                    startAngle: CGFloat(Double.pi),
//                    endAngle: CGFloat(3*Double.pi),
//                    clockwise: true)
//        //Пляж
//        path.move(to: CGPoint(x: 390, y: 0))
//        path.addLine(to: CGPoint(x: 700, y: 270))
//        path.close()
//        path.move(to: CGPoint(x: 560, y: 150))
//        path.addLine(to: CGPoint(x: 560, y: 500))
//        path.close()
//
//
////        path.move(to: CGPoint(x: <#T##CGFloat#>, y: <#T##CGFloat#>))
//
//
//
//
//
//
//
//
//
//        //path.addLine(to: CGPoint(x: 350, y: 40))
////        path.addArc(withCenter: CGPoint(x: 350, y: 40),
////                    radius: 10,
////                    startAngle: CGFloat(Double.pi),
////                    endAngle: CGFloat(4*Double.pi),
////                    clockwise: true)
////
////        path.move(to: CGPoint(x: 20, y: 83))
////
////        path.addLine(to: CGPoint(x: 40, y: 83))
////        path.addLine(to: CGPoint(x: 40, y: 90))
////        path.addCurve(to: CGPoint(x: 55, y: 70), controlPoint1: CGPoint(x: 48, y: 95), controlPoint2: CGPoint(x: 54, y: 71))
////        path.addLine(to: CGPoint(x: 60, y: 70))
////        path.addLine(to: CGPoint(x: 60, y: 85))
////        path.addLine(to: CGPoint(x: 70, y: 85))
////        path.addLine(to: CGPoint(x: 70, y: 115))
////        path.addLine(to: CGPoint(x: 50, y: 115))
////        path.addLine(to: CGPoint(x: 40, y: 110))
////        path.addLine(to: CGPoint(x: 40, y: 115))
////        path.addLine(to: CGPoint(x: 20, y: 115))
////        path.addLine(to: CGPoint(x: 20, y: 84))
//        return path
//        }
    
}
