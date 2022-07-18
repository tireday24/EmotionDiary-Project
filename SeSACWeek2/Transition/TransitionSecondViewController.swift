//
//  TransitionSecondViewController.swift
//  SeSACWeek2
//
//  Created by 권민서 on 2022/07/15.
//

import UIKit



class TransitionSecondViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    /*
     1. 앱 키면 데이터를 가지고 와서 텍스트 뷰에 보여주어야함
     2. 바뀐 데이터를 저장해주어야 한다
     ==> UserDefault
    
    
    */
    @IBOutlet weak var countLabel: UILabel!
    
    
    
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        
        //기존의 데이터 값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: "emotion")
        
        let updateValue = currentValue + 1
        
        //새로운 값 저장
        //엡 삭제하면 날아감
        
        UserDefaults.standard.set(updateValue, forKey: "emotion")
        print("저장되었습니다")
        
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "emotion"))"
        
        //키 하나하나 삭제함
        UserDefaults.standard.removeObject(forKey: "emotion")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TransitionSecondViewController", #function)
        
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "emotion"))"
        
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            //데이터가 없는 경우 사용할 구문
            mottoTextView.text = "고래밥"
        }
        
        print(UserDefaults.standard.integer(forKey: "clicked"))
        
        print(UserDefaults.standard.string(forKey: "phoneNumber"))
        print(UserDefaults.standard.integer(forKey: "age"))
        print(UserDefaults.standard.bool(forKey: "inapp"))
                                                            
        
        
        //가져오기
        mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        
        
    }
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("TransitionSecondViewController", #function)
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("TransitionSecondViewController", #function)
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            print("TransitionSecondViewController", #function)
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            print("TransitionSecondViewController", #function)
        }
        
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        //닉네임 키 공간 생성
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다!")
    }
}


