//
//  ViewController.swift
//  FirstApp
//
//  Created by Lars van der Sangen on 15/01/2019.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    
    var colorArray: Array<UIColor> = [
        UIColor.black,
        UIColor.white,
        UIColor.green,
        UIColor.brown,
        UIColor.gray
    ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeBackgroundRandom(_ sender: Any)
    {
        // Get random UIColor from colorArray
        let randomUIColor: UIColor = self.colorArray.randomElement()!
        
        // Set Random UIColor to view.background
        self.view.backgroundColor = randomUIColor;
    }
    
    @IBAction func clickButton(_ sender: Any)
    {
        self.helloWorldLabel.text = "The button has been clicked correctly"
    }
}

