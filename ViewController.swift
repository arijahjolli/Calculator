//
//  ViewController.swift
//  Tip Calculator V2
//
//  Created by Ari Jahjolli on 11/27/19.
//  Copyright © 2019 Ari Jahjolli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sliderPercentage: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tipTotal: UILabel!
    @IBOutlet weak var totalBill: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    
    
    
    @IBAction func sliderAction(_ sender: Any) {
        
        sliderPercentage.text = String(Int(slider.value));
        
            let tempValue = Int(slider.value);
        
            let userBillAmount = (textField.text! as NSString).floatValue;
            let totalTipAmmount = Float(tempValue)/100 * userBillAmount;
            tipTotal.text = String(totalTipAmmount);
            totalBill.text = String(totalTipAmmount + userBillAmount);
        
        
        
        
        
        
    }
    
    
    @IBAction func textField(_ sender: Any) {
        
        let userBillAmount = (textField.text! as NSString).floatValue;
        let totalTipAmmount = Float(slider.value)/100 * userBillAmount;
            tipTotal.text = String(totalTipAmmount);
            totalBill.text = String(totalTipAmmount + userBillAmount);
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self as? UITextFieldDelegate;
        textField.keyboardType = .numberPad;
        // Do any additional setup after loading the view.
        
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
               let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
               return string.rangeOfCharacter(from: invalidCharacters) == nil
           }
        
    }


}

