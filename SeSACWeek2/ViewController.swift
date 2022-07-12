//
//  ViewController.swift
//  SeSACWeek2
//
//  Created by 권민서 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    
    var emotionArrary = [0,1,2,3,4,5]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.layer.cornerRadius = 20
        greenView.clipsToBounds = true // shadow
        //greenView.layer.shadow 활용
        //clipsToBounds vs cornerRadius vs shadow
        // label image view를 깎아 보면서 정리해보자
        
        var emotionFirstButton = 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        //모서리 한쪽만 원형
        greenView.layer.maskedCorners = [.layerMinXMaxYCorner]
        greenView.layer.cornerRadius = 10
        // tag 쓰려면 iboulletcollection 써야함
        //emotionFirstButton.tag = 0 -> 태그 속성
//        let image = UIImage(named: "..")?.withRenderingMode(.alwaysOriginal)
//        emotionFirstButon.setImage(image:image, for:.normal)
//        let systemImage = UIImage(systemName: String) 애플 시스템 심볼
//
//        let literal = #imageLiteral
    }
    
//    var emotionFirst = 0
    //inspector view -> tag
    // 버튼마다 tag를 1씩 늘려준다

//    func kk() {
//        emotionArrary[sender.tag] += 1
//
//        emotionFirst.text = "\(emotionArrary[0])"
    
    //showAlertController
//
//}
    
    func showAlertController() {
        //1. 흰 바탕 : UIAlertController
        //title이 없을 경우 ""이 아니라 nil 값으로 처리
        let alert = UIAlertController(title: "타이틀", message: "여기는 메세지가 들어갑니다", preferredStyle: .alert)
        
        //2. 버튼 만들기 -> alert 버튼액션은 코드로만 만들수있음
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancle = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사", style: .default, handler: nil)
        
        //3. 1+2 추가한순서대로 붙음
        alert.addAction(web)
        alert.addAction(cancle)
        alert.addAction(copy)
        alert.addAction(ok)
        
        //4. 유저에게 띄워주세요 Present
        present(alert, animated: true, completion: nil)
        
        
    }
}

