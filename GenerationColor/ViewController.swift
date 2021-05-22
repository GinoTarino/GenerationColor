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
    
    private let сonversionRateInRGBValue: Float = 0.0039215686
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        fieldResultColor.layer.cornerRadius = 10
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
        redSlider.value = 0.54
        greenSlider.value = 0.46
        blueSlider.value = 0.1
        
        
    }
    
    @IBAction func moveRedColor() {
        redValue.text  = "\(Int(redSlider.value / сonversionRateInRGBValue))"
        
        fieldResultColor.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0)
                
        labelResultColor.text = "RGB: (\(redValue.text ?? "0"), \(greenValue.text ?? "0") \(blueValue.text ?? "0"))"
    }
    
    @IBAction func moveGreenColor() {
        greenValue.text  = "\(Int(greenSlider.value / сonversionRateInRGBValue))"
        
        fieldResultColor.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0)
        
        labelResultColor.text = "RGB: (\(redValue.text ?? "0"), \(greenValue.text ?? "0") \(blueValue.text ?? "0"))"
    }
    
    @IBAction func moveBlueColor() {
        blueValue.text  = "\(Int(blueSlider.value / сonversionRateInRGBValue))"
        
        fieldResultColor.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0)
        
        labelResultColor.text = "RGB: (\(redValue.text ?? "0"), \(greenValue.text ?? "0") \(blueValue.text ?? "0"))"
    }

}
