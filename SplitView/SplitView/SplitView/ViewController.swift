//
//  ViewController.swift
//  SplitView
//
//  Created by Aluno on 11/05/18.
//  Copyright © 2018 CESAR School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "option_1" {
            if let myView == segue.destination as? DetailsViewController {
                myView.labelText = "option 1"
            }
        }
        else if segue.identifier == "option_2" {
            if let myView == segue.destination as? DetailsViewController {
                myView.labelText = "option 2"
            }
        }
    }

}

