//
//  IntroScreenViewController.swift
//  AnywhereFitness
//
//  Created by Brandi Bailey on 1/7/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import UIKit
import Core Data

class IntroScreenViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)

    }
    
    @IBAction func signInTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Sign In", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Username"
            alert.addTextField { (textField) in
                textField.placeholder = "Password"
            }
        }
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            let username = alert.textFields?.first?.text
            let password = alert.textFields?.last?.text
            
            // NETWORK REQUEST HERE TO POST REQUEST AND DIRECT TO INSTRUCTOR OR CLIENT HOME SCREEN DEPENDING ON USER TYPE.
        }

        alert.addAction(action)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
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
