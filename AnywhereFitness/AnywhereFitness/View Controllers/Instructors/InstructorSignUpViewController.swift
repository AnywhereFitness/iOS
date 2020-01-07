//
//  InstructorSignUpViewController.swift
//  AnywhereFitness
//
//  Created by Brandi Bailey on 1/7/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import UIKit

class InstructorSignUpViewController: UIViewController {

    @IBOutlet weak var signUpBackButton: UIButton!
    @IBOutlet weak var instructorNameTextField: UITextField!
    @IBOutlet weak var instructorPhoneTextField: UITextField!
    @IBOutlet weak var instructorURLTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    @IBAction func instructorConfirmButton(_ sender: Any) {
        
    }
    
}
