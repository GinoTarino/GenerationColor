//
//  ViewController.swift
//  GenerationColor
//
//  Created by Павел on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fieldResultColor: UIView!
    
    @IBOutlet weak var redValue: UITextField!
    @IBOutlet weak var greenValue: UITextField!
    @IBOutlet weak var blueValue: UITextField!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var labelResultColor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        fieldResultColor.layer.cornerRadius = 10
        
        var  redSliderValue:CGColor = .init(srgbRed: 224.0, green: 24.0, blue: 34.0, alpha: 1.0)
    }
    
    
    
    @IBAction func moveRedColor() {
        redValue.text  = "\(CGFloat(redSlider.value))"
        
    }
        
    
    @IBAction func moveGreenColor() {
        greenValue.text  = "\(CGFloat(greenSlider.value))"
    }
    
    @IBAction func moveBlueColor() {
        blueValue.text  = "\(CGFloat(blueSlider.value))"
    }
    
    @IBAction func tappingForCopyColor() {
    }
    
}
