//
//  NewViewController.swift
//  Homework9
//
//  Created by Kato on 4/27/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var SurnameLabel: UILabel!
    
    @IBOutlet weak var EmailLabel: UILabel!
    
    @IBOutlet weak var MobileLabel: UILabel!
    
    var finalName = ""
    var finalSurname = ""
    var finalEmail = ""
    var finalMobile = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        NameLabel.text = finalName
        SurnameLabel.text = finalSurname
        EmailLabel.text = finalEmail
        MobileLabel.text = finalMobile
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
