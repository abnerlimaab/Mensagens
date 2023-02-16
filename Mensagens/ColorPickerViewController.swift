//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Abner Lima on 13/02/23.
//  Copyright © 2023 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorpickerDelegade: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var delegade: ColorpickerDelegade?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
        
        delegade?.applyColor(color: viColor.backgroundColor!)
    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
        
}
