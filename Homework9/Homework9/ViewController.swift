//
//  ViewController.swift
//  Homework9
//
//  Created by Kato on 4/27/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nameText = ""
    var surnameText = ""
    var emailText = ""
    var mobileText = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var surnameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var mobileTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onRegisterTapped(_ sender: UIButton) {
        
        self.nameText = nameTextField.text!
        self.surnameText = surnameTextField.text!
        self.emailText = emailTextField.text!
        self.mobileText = mobileTextField.text!
        
        //shows an alert if user does not enter anything in at least one field
        if nameText == "" || surnameText == "" || emailText == "" || mobileText == "" {
            let alert1 = UIAlertController(title: "Try Again", message: "You must enter information in all fields in order to continue.", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert1, animated: true, completion: nil)
        }
        //shows an alert if user's email does not contain an @ symbol
        else if !emailText.contains("@") {
            let alert2 = UIAlertController(title: "Incorrect Email", message: "Your email does not contain an @ symbol", preferredStyle: .alert)
            alert2.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert2, animated: true, completion: nil)
        }
        
 
        performSegue(withIdentifier: "segue_for_registration", sender: sender)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc1 = segue.destination as! NewViewController
        vc1.finalName = self.nameText
        
        let vc2 = segue.destination as! NewViewController
        vc2.finalSurname = self.surnameText
        
        let vc3 = segue.destination as! NewViewController
        vc3.finalEmail = self.emailText
        
        let vc4 = segue.destination as! NewViewController
        vc4.finalMobile = self.mobileText
        
        
    }
    
}

