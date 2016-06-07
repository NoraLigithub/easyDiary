//
//  NewDairyViewController.swift
//  TestBigProject
//
//  Created by 段雯雯 on 16/6/6.
//  Copyright © 2016年 段雯雯. All rights reserved.
//

import UIKit

class NewDairyViewController: UIViewController {
    @IBOutlet weak var dateText: UITextField!
    @IBOutlet weak var answer1Text: UITextField!
    @IBOutlet weak var answer2Text: UITextField!
    @IBOutlet weak var answer3Text: UITextField!
    @IBOutlet weak var answer4Text: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var newDate:String?
    var newAnswer1:String?
    var newAnswer2:String?
    var newAnswer3:String?
    var newAnswer4:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if sender === self.saveButton {
            self.newDate = self.dateText.text
            self.newAnswer1 = self.answer1Text.text
            self.newAnswer2 = self.answer2Text.text
            self.newAnswer3 = self.answer3Text.text
            self.newAnswer4 = self.answer4Text.text
        }
    }
    

}
