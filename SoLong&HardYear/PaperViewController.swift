//
//  ViewController.swift
//  SoLong&HardYear
//
//  Created by Zuck Rossental on 08.12.15.
//  Copyright © 2015 gemcave. All rights reserved.
//

import UIKit

class PaperViewController: UIViewController {
    var monthToShow: Int = 0
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        let imageName = String(format: "%02d.jpg", arguments: [monthToShow])
        imageView.image = UIImage(named: imageName)
    }
    
    @IBAction func tapClose(){
    dismissViewControllerAnimated(true,completion: nil)
    }
    
}

