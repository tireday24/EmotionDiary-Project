//
//  BlogViewController.swift
//  SeSACWeek2
//
//  Created by 권민서 on 2022/07/13.
//

import UIKit

class BlogViewController: UIViewController {
    
    
    @IBOutlet weak var aView: UIView!
    @IBOutlet weak var bView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shadow()
        
    }
    
    func shadow() {
        aView.layer.shadowRadius = 20
        aView.layer.shadowOpacity = 0.7
        aView.layer.shadowOffset = CGSize(width: -20, height: 0)
        aView.layer.shadowPath = nil
        aView.layer.shadowColor = UIColor.blue.cgColor
    }

  

}
