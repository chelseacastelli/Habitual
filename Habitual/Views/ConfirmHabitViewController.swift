//
//  ConfirmHabitViewController.swift
//  Habitual
//
//  Created by ChelseaAnne Castelli on 6/4/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class ConfirmHabitViewController: UIViewController {
    
    var habitImage: Habit.Images!
    
    @IBOutlet weak var habitImageView: UIImageView!
    @IBOutlet weak var habitNameInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    
    private func updateUI() {
        title = "New Habit"
        habitImageView.image = habitImage.image
    }

    @IBAction func createHabitButtonPressed(_ sender: Any) {
        var persistenceLayer = PersistenceLayer()
        guard let habitText = habitNameInputField.text else { return }
        persistenceLayer.createNewHabit(name: habitText, image: habitImage)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
