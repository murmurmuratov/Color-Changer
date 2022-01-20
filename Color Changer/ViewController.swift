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
        
        setColor()
        setValue(for: redValueLabel, greenValueLabel, blueValueLabel)
    }

    @IBAction func redSliderAction(_ sender: Any) {
        redValueLabel.text = String(Int(redSlider.value))
        setColor()
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greenValueLabel.text = String(Int(greenSlider.value))
        setColor()
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueValueLabel.text = String(Int(blueSlider.value))
        setColor()
    }
    
    private func setColor() {
        changedColorView.backgroundColor = UIColor( red: CGFloat(redSlider.value) / 255,
                                                    green: CGFloat(greenSlider.value) / 255,
                                                    blue: CGFloat(blueSlider.value) / 255,
                                                    alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: redValueLabel.text = String(Int(redSlider.value))
            case 1: greenValueLabel.text = String(Int(greenSlider.value))
            case 2: blueValueLabel.text = String(Int(blueSlider.value))
            default: break
            }
        }
    }
}
