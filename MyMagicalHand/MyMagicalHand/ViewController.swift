//
//  MyMagicalHand - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet var canvasView: CanvasView!
    @IBOutlet var resultShapeLabel: UILabel!
    @IBOutlet var percentageShapeLabel: UILabel!

    @IBAction func clearCanvas(_ sender: UIButton) {
        canvasView.clear()
        resultShapeLabel.text = ""
        percentageShapeLabel.text = ""
    }

    @IBAction func finishDraw(_ sender: UIButton) {
        resultShapeLabel.text = "원"
        percentageShapeLabel.text = "100%"
    }

}
