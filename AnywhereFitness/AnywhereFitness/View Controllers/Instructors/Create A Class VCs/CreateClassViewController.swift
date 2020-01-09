//
//  CreateClassViewController.swift
//  AnywhereFitness
//
//  Created by Brandi Bailey on 1/7/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import UIKit
import DropDown
import CoreData

class CreateClassViewController: UIViewController {
    
    
    @IBOutlet weak var classTypeDropDownButton: UIButton!
    @IBOutlet weak var classSizeTextField: UITextField!
    @IBOutlet weak var classLengthTextField: UITextField!
    @IBOutlet weak var classLevelDropDownButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    let classTypeDropDown = DropDown()
    let classLevelDropDown = DropDown()
    
    lazy var dropDowns: [DropDown] = {
        return [
            self.classTypeDropDown,
            self.classLevelDropDown
        ]
    }()
    
    @IBAction func classType(_ sender: Any) {
        classTypeDropDown.show()
    }
    @IBAction func classLevel(_ sender: Any) {
        classLevelDropDown.show()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupDropDowns()
        dropDowns.forEach { $0.dismissMode = .onTap }
        dropDowns.forEach { $0.direction = .bottom }
        
    }
    
    func setupDropDowns() {
        setupClassTypeDropDown()
        setupClassLevelDropDown()
    }
    
    func setupClassTypeDropDown() {
        classTypeDropDown.anchorView = classTypeDropDownButton
        
        classTypeDropDown.dataSource = [
            "Select Class Type",
            "Yoga",
            "Pilates",
            "Tai Chi",
            "Cardio - Running",
            "Cardio - Jogging",
            "Cardio - Walking",
            "Cardio - Cycling",
            "Cardio - Other"
        ]
        
        classTypeDropDown.selectionAction = { [weak self] (index, item) in
            self?.classTypeDropDownButton.setTitle(item, for: .normal)
        }
    }
    
    func setupClassLevelDropDown() {
        classLevelDropDown.anchorView = classLevelDropDownButton
        
        classLevelDropDown.dataSource = [
            "Select Class Level",
            "Beginner",
            "Intermediate",
            "Advanced",
        ]
        
        classLevelDropDown.selectionAction = { [weak self] (index, item) in
            self?.classLevelDropDownButton.setTitle(item, for: .normal)
        }
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
