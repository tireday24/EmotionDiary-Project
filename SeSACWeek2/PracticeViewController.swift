//
//  PracticeViewController.swift
//  SeSACWeek2
//
//  Created by 권민서 on 2022/07/12.
//

import UIKit

class PracticeViewController: UIViewController {

  

    @IBOutlet weak var practiceP: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //이렇게 쓰려고 반환값 씀
        practiceP.text = setUserNickName()
        
        view.backgroundColor = example().0
        //prctice:.setImage(UIImage(named: example().2), for: .normal)
            
            
        }
    
    
    
        
    func setUserNickName()  -> String {
        let nickname = ["고래밥", "칙촉", "격투가"]
        let select = nickname.randomElement()!
            
        return "저는\(select)입니다"
    }
    
    // 배경색, 레이블, 이미지
    func example() -> (UIColor, String, String) {
        
        let color : [UIColor] = [.yellow, .red, .blue]
        let image : [String] = ["sesac_smile6", "sesac_smile7"]
        
        return (color.randomElement()!, "고래밥", image.randomElement()!)
    }
        
    }
    




