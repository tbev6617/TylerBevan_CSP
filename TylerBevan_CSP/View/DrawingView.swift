//
//  DrawingView.swift
//  TylerBevan_CSP
//
//  Created by Bevan, Tyler on 12/5/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit

class DrawingView: UIView
{


    override public func draw(_ rect: CGRect)
    {
        stickFigure().stroke()
        drawHappyTree()
    }
    private func stickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.black.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y : 220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        
        stickFigure.move(to: CGPoint(x: 175, y : 240))
        stickFigure.addLine(to: CGPoint(x: 225, y: 240))
        
        stickFigure.move(to: CGPoint(x: 200, y : 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        
        stickFigure.move(to: CGPoint(x: 200, y : 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        return stickFigure
    }
    private func drawHappyTree() -> Void
    {
        let penguin = UIBezierPath()
        penguin.lineWidth = 2.0
        UIColor(patternImage: UIImage(named: "cute")!).setFill()
        UIColor.brown.setStroke()
        
        penguin.move(to: CGPoint(x: 80, y: 50))
        penguin.addLine(to: CGPoint(x: 120, y: 150))
        penguin.addLine(to: CGPoint(x: 40, y: 150))
        penguin.close()
        penguin.fill()
        penguin.stroke()
        
        penguin.move(to: CGPoint(x: 60, y: 150))
        penguin.addLine(to: CGPoint(x: 20, y: 300))
        penguin.addLine(to: CGPoint(x: 140, y: 300))
        penguin.addLine(to: CGPoint(x: 100, y: 150))
        penguin.fill()
        penguin.stroke()
        
        penguin.lineWidth = 5.0
        penguin.move(to: CGPoint(x: 80,y: 300))
        penguin.addLine(to: CGPoint(x: 80, y: 350))
        penguin.stroke()
    }
    private func drawTurtle() -> Void
    {
        
    }
}
