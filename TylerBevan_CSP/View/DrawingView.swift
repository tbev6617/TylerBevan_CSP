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
        drawBorder()
    }
    private func drawBorder()
    {
        UIColor.black.setStroke()
        let border = UIBezierPath()
        border.lineWidth = 10
        
        border.move(to: CGPoint(x: 0,y: 0))
        border.addLine(to: CGPoint(x: 345, y: 0))
        border.addLine(to: CGPoint(x: 345,y: 500))
        border.addLine(to: CGPoint(x: 0,y: 500))
        border.close()
        
        border.stroke()
    }
    private func stickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.black.setStroke()
        stickFigure.lineWidth = 4.0
        //Head
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        //Middle stick
        stickFigure.move(to: CGPoint(x: 200, y : 220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        
        //Right foot
        stickFigure.move(to: CGPoint(x: 175, y : 240))
        stickFigure.addLine(to: CGPoint(x: 225, y: 240))
        
        //Left foot
        stickFigure.move(to: CGPoint(x: 200, y : 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        
        //Hands
        stickFigure.move(to: CGPoint(x: 200, y : 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        return stickFigure
    }
    private func drawHappyTree() -> Void
    {
        let penguin = UIBezierPath()
        penguin.lineWidth = 4.0
        UIColor(patternImage: UIImage(named: "cute")!).setFill()
        UIColor.black.setStroke()
        
        penguin.move(to: CGPoint(x: 80, y: 50))
        penguin.addLine(to: CGPoint(x: 120, y: 150))
        penguin.addLine(to: CGPoint(x: 40, y: 150))
        penguin.close()
        
        penguin.move(to: CGPoint(x: 60, y: 150))
        penguin.addLine(to: CGPoint(x: 20, y: 300))
        penguin.addLine(to: CGPoint(x: 140, y: 300))
        penguin.addLine(to: CGPoint(x: 100, y: 150))
        
        penguin.move(to: CGPoint(x: 80,y: 300))
        penguin.addLine(to: CGPoint(x: 80, y: 350))
        
        penguin.fill()
        penguin.stroke()
    }
    
}
