//
//  DateTimeViewController.swift
//  HoroscopoChino
//
//  Created by user164187 on 2/17/20.
//  Copyright © 2020 Salvador gonzalez. All rights reserved.
//

import UIKit

class DateTimeViewController: UIViewController {

    @IBOutlet weak var dateTimePicker: UIDatePicker!
    @IBOutlet weak var dateTimeButton: UIButton!
    
    @IBAction func dateTimeButtonTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "descriptionSegue", sender: self)
        
    }
    
    func changeDatePickerColor() {
        dateTimePicker.setValue(UIColor.red, forKeyPath: "textColor")
        dateTimePicker.setValue(false, forKeyPath: "highlightsToday")
    }
    
    func roundBorderButton() {
        dateTimeButton.layer.cornerRadius = 20
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeDatePickerColor()
        roundBorderButton()
        
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let descriptionViewController = segue.destination as? DescriptionViewController else { return }
        
        descriptionViewController.birthDate = dateTimePicker.date
       
    }

}
