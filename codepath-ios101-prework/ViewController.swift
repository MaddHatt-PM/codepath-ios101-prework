//
//  ViewController.swift
//  codepath-ios101-prework
//
//  Created by Patt Martin on 7/30/23.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var textElements: [UILabel]!

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        var randomColor = UIColor.white
        var textColor = UIColor.white
        var threshold: CGFloat = 0.4

        while true {
            randomColor = changeColor()
            textColor = invert(color: randomColor)
            let difference = abs(getAverage(color: randomColor) - getAverage(color: textColor))
            if difference > threshold {
                break
            }
        }

        view.backgroundColor = randomColor

        textElements.forEach { item in
            item.textColor = textColor
        }
    }

    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

    func invert(color: UIColor) -> UIColor {
        let comps = color.cgColor.components!
        return UIColor(red: 1 - comps[0], green: 1 - comps[1], blue: 1 - comps[2], alpha: 1.0)
    }

    func getAverage(color: UIColor) -> CGFloat {
        return (color.cgColor.components!.reduce(0) { $0 + $1 } - 1) / 3
    }
}
