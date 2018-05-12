//
//  ViewController.swift
//  ScrollView
//
//  Created by Aluno on 12/05/18.
//  Copyright © 2018 CESAR School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var myScrollView: UIScrollView!
    
    var imageView = UIImageView()
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            return imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myScrollView.delegate = self
        myScrollView.minimumZoomScale = 1/10
        myScrollView.maximumZoomScale = 1.2
        
        imageView.image = #imageLiteral(resourceName: "space")
        imageView.sizeToFit()
        myScrollView.addSubview(imageView)
        myScrollView.contentSize = imageView.frame.size
        
        let x = imageView.frame.width / 2
        let y = imageView.frame.height / 2
        
        myScrollView.setContentOffset(CGPoint(x: x, y: y), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

