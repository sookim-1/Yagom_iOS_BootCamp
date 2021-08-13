//
//  CanvasView.swift
//  MyMagicalHand
//
//  Created by sookim on 2021/08/13.
//

import UIKit

class CanvasView: UIView {

    var lines = [CGPoint]()

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        guard let context = UIGraphicsGetCurrentContext() else { return }

        context.setStrokeColor(UIColor.black.cgColor)
        context.setLineWidth(15)
        context.setLineCap(.round)

        for (i, p) in lines.enumerated() {
            if i == 0 {
                context.move(to: p)
            } else {
                context.addLine(to: p)
            }
        }

        context.strokePath()
    }

    // MARK: - 사용자 터치인식
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: self) else { return }
        lines.append(point)
        setNeedsDisplay()
    }

    private func clear() {
        lines.removeAll()
        setNeedsDisplay()
    }

}
