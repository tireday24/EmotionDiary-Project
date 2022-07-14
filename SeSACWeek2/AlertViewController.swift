//
//  AlertViewController.swift
//  SeSACWeek2
//
//  Created by 권민서 on 2022/07/13.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    
    
    
    

    
    @IBAction func buttonPra(_ sender: UIButton) {
        
        //func showAlertController() {
            //1. 흰 바탕 : UIAlertController
            //title이 없을 경우 ""이 아니라 nil 값으로 처리
        let alert = UIAlertController(title: "타이틀", message: nil, preferredStyle: .actionSheet)
            
            //2. 버튼 만들기 -> alert 버튼액션은 코드로만 만들수있음
            let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
            //let cancle = UIAlertAction(title: "취소", style: .cancel, handler: nil)
            //let web = UIAlertAction(title: "새 창", style: .default, handler: nil)
            //let copy = UIAlertAction(title: "복사", style: .default, handler: nil)
            
            //3. 1+2 추가한순서대로 붙음
            //alert.addAction(web)
            //alert.addAction(cancle)
            //alert.addAction(copy)
            alert.addAction(ok)
            
            //4. 유저에게 띄워주세요 Present
            present(alert, animated: true, completion: nil)
            
            
        //}
        
    }
    
}
