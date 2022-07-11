//
//  ViewController.swift
//  SeSACWeek2
//
//  Created by 권민서 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.layer.cornerRadius = 20
        greenView.clipsToBounds = true // shadow
        //greenView.layer.shadow 활용
        //clipsToBounds vs cornerRadius vs shadow
        // label image view를 깎아 보면서 정리해보자
        
        
        greenView.layer.cornerRadius = greenView.frame.width / 2
        //모서리 한쪽만 원형
        greenView.layer.maskedCorners = [.layerMinXMaxYCorner]
        greenView.layer.cornerRadius = 10
        
    }


}

