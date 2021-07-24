//
//  ViewController.swift
//  Controls practice
//
//  Created by Наталья Шарапова on 24.07.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var button: UIButton!
    @IBOutlet var switches: [UISwitch]!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    
    var number: UInt8 = 128 {
        didSet {
            updateUI()
        }
    }
    
    /// Updates all outlets to number
    func updateUI() {
        button.setTitle("\(number)", for: [])
        
    // TODO: set switches to number
        
        
        slider.value = Float(number)
        textField.text = "\(number)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed() {
        number = UInt8(Int(number + 1) % 256)
    }
    @IBAction func switchToggled(_ sender: UISwitch) {
    }
    @IBAction func sliderMoved() {
        number = UInt8(slider.value)
    }
    @IBAction func textFieldEdited() {
        number = UInt8(textField.text ?? "") ?? 128
    }
}

