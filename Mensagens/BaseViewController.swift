//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Abner Lima on 13/02/23.
//  Copyright © 2023 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        if let reference = self as? ColorpickerDelegade {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delegade = reference
            
            present(colorPicker, animated: true, completion: nil)
        }
    }

}
