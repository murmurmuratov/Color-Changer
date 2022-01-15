//
//  ViewController.swift
//  Color Changer
//
//  Created by Александр Муратов on 15.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var changedColorView: UIView!
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var informationBGView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumTrackTintColor = .systemRed
        greenSlider.minimumTrackTintColor = .systemGreen
        blueSlider.minimumTrackTintColor = .systemBlue
        
        informationBGView.layer.cornerRadius = 20
        informationBGView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        changedColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        // Do any additional setup after loading the view.
    }

    @IBAction func redSliderAction(_ sender: Any) {
        redValueLabel.text = String(Int(redSlider.value))
        changedColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value)/255,
            green: CGFloat(greenSlider.value)/255,
            blue: CGFloat(blueSlider.value)/255,
            alpha: 1)
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greenValueLabel.text = String(Int(greenSlider.value))
        changedColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value)/255,
            green: CGFloat(greenSlider.value)/255,
            blue: CGFloat(blueSlider.value)/255,
            alpha: 1)
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueValueLabel.text = String(Int(blueSlider.value))
        changedColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value)/255,
            green: CGFloat(greenSlider.value)/255,
            blue: CGFloat(blueSlider.value)/255,
            alpha: 1)
    }
    
}

