//
//  ViewController.swift
//  ScrollView
//
//  Created by Aluno on 12/05/18.
//  Copyright © 2018 CESAR School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myScrollView: UIScrollView!
    
    var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = #imageLiteral(resourceName: "space")
        imageView.sizeToFit()
        myScrollView.addSubview(imageView)
        myScrollView.contentSize = imageView.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

