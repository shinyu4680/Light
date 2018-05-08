//
//  ViewController.swift
//  Light
//
//  Created by kevin on 2018/5/8.
//  Copyright © 2018 KevinChang. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    var count = 0
    let redColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
    let orangeColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
    let yelloColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
    let greenColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
    let blueColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
    let indigoColor = #colorLiteral(red: 0.2941176471, green: 0, blue: 0.5098039216, alpha: 1)
    let purpleColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
    let colorDistribution = GKRandomDistribution(lowestValue: 0, highestValue: 6)
    var colorArray = [UIColor]()
    
    
    @IBAction func tapGesturePressed(_ sender: Any) {
        if count <= 5{
            count += 1
            view.backgroundColor = colorArray[count]
        }else if count == 6{
            count = 0
            view.backgroundColor = colorArray[count]
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorArray += [redColor, orangeColor, yelloColor, greenColor, blueColor, indigoColor, purpleColor]
        count = colorDistribution.nextInt()
        view.backgroundColor = colorArray[count]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

