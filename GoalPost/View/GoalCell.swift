//
//  GoalCell.swift
//  GoalPost
//
//  Created by Vibhanshu Vaibhav on 07/10/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    @IBOutlet weak var goalCompletionView: UIView!
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLabel.text = goal.goalDescription
        self.goalTypeLabel.text = goal.goalType
        self.goalProgressLabel.text = String(describing: goal.goalProgressValue)
        if goal.goalProgressValue == goal.goalCompletionValue {
            goalCompletionView.isHidden = false
        } else {
            goalCompletionView.isHidden = true
        }
    }
}
