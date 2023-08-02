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
        randomInfo.text = ""
    }

    @IBOutlet var textElements: [UILabel]!
    @IBOutlet var randomInfo: UILabel!

    let randomInfoStrings: [String] = [
        "At one point I was a Texture and 3D Artist who would sometimes code small utility scripts.",
        "One of my first programming classes was with C++ and the DarkGDK framework... I dropped the class.",
        "I used to do game development with Unity and C#. My favorite aspects were procedural mesh generation and editor tool development.",
        "In highschool, I made an iOS app for our student newspaper with Objective-C.",
        "I'm a double major for Applied Mathematics and Computer Science.",
        "Last summer, I did undergraduate research with our department's chair for golf course player optimization. I was responsible for creating tools for data collection and processing.",
        "My IDE of choice is VS Code, but I've been experimenting with PyCharm for python development.",
        "I want to be a full-stack developer as I enjoy the fine-tuning aspect of UI development and also the development of tools to process data."
    ]
    
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
    
        randomInfo.text = randomInfoStrings.randomElement()!
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
