//
//  CreateClassFourViewController.swift
//  AnywhereFitness
//
//  Created by Brandi Bailey on 1/8/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import UIKit
import Core Data

class CreateClassFourViewController: UIViewController {
    
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var whenToArriveTextField: UITextField!
    @IBOutlet weak var whatYouShouldKnowTextField: UITextView!
    @IBOutlet weak var finishCreateClassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func finishButtonTapped(_ sender: Any) {
        
//            let alert = UIAlertController(title: "ClassCreated!", message: "Your class has been sucessfully created!", preferredStyle: .alert)
//
//                   }
//                   let action = UIAlertAction(title: "Continue", style: .default) { (_) in
//                    
//                    
//                   }
//        
//                   alert.addAction(action)
//
//                   present(alert, animated: true, completion: nil)
        
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
