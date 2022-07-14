//
//  EmotionDiaryViewController.swift
//  SeSACWeek2
//
//  Created by 권민서 on 2022/07/11.
//

import UIKit

enum EmotionEnum: String {
    case 행복해 = "행복해"
    case 사랑해 = "사랑해"
    case 좋아해 = "좋아해"
    case 당황해 = "당황해"
    case 속상해 = "속상해"
    case 우울해 = "우울해"
    case 심심해 = "심심해"
    case 따분해 = "따분해"
    case 포기해 = "포기해"
}

class EmotionDiaryViewController: UIViewController {
    
    @IBOutlet weak var happyButton: UIButton!
    @IBOutlet weak var loveButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var stuffyButton: UIButton!
    @IBOutlet weak var upsetButton: UIButton!
    @IBOutlet weak var gloomyButton: UIButton!
    @IBOutlet weak var boredButton: UIButton!
    @IBOutlet weak var tiredButton: UIButton!
    @IBOutlet weak var giveUpButton: UIButton!
    
    
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var stuffyLabel: UILabel!
    @IBOutlet weak var upsetLabel: UILabel!
    @IBOutlet weak var gloomyLabel: UILabel!
    @IBOutlet weak var boredLabel: UILabel!
    @IBOutlet weak var tiredLabel: UILabel!
    @IBOutlet weak var giveUpLabel: UILabel!
    
    @IBOutlet var emotionButton : [UIButton]!
    @IBOutlet var emotionLabelCollection: [UILabel]!
//
    
    // data source
//    enum EmotionEnum: String {
//        case 행복해 = "행복해"
//        case 사랑해 = "사랑해"
//        case 좋아해 = "좋아해"
//        case 당황해 = "당황해"
//        case 속상해 = "속상해"
//        case 우울해 = "우울해"
//        case 심심해 = "심심해"
//        case 따분해 = "따분해"
//        case 포기해 = "포기해"
//    }
    
    var dictionary = [UIButton: UILabel]() // [:]
    var emotionCases: [EmotionEnum] = [.행복해, .사랑해, .좋아해, .당황해, .속상해, .우울해, .심심해, .따분해, .포기해]
    var emotionArrary = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...8 {
            emotionButton[i].tag = i
        }
//
         //dictionary 를 채워주기
//        dictionary = [happyButton: happyLabel, loveButton: loveLabel, likeButton: likeLabel, stuffyButton: stuffyLabel, upsetButton: upsetLabel, gloomyButton: gloomyLabel, boredButton: boredLabel, tiredButton: tiredLabel, giveUpButton: giveUpLabel ]
        
        
        labelDesign(happyLabel, labelTitle: "행복해")
        labelDesign(loveLabel, labelTitle: "사랑해")
        labelDesign(likeLabel, labelTitle: "좋아해")
        labelDesign(stuffyLabel, labelTitle: "당황해")
        labelDesign(upsetLabel, labelTitle: "속상해")
        labelDesign(gloomyLabel, labelTitle: "우울해")
        labelDesign(boredLabel, labelTitle: "심심해")
        labelDesign(tiredLabel, labelTitle: "따분해")
        labelDesign(giveUpLabel, labelTitle: "포기해")
    }
    
    func labelDesign(_ labelName : UILabel, labelTitle: String) {
        labelName.layer.backgroundColor = UIColor.clear.cgColor
        labelName.font = .systemFont(ofSize: 20)
    }
    
    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        emotionArrary[sender.tag] += 1
//        emotionLabelCollection[sender.tag].text = emotionName[sender.tag] + "\(emotionArrary[sender.tag])"
        let emotionCase = emotionCases[sender.tag]
        let emotionString = emotionCase.rawValue
        emotionLabelCollection[sender.tag].text = emotionString + "\(emotionArrary[sender.tag])"
    }

    
    /*
     행복해 4
     1. label1: 행복해 2
        -> split ->  행복해 / 100 [행복해, -100]
        -> array[1]
            강제 / 확인
        -> Int(array[1]) -> optional
        -> 벗겨지면, 숫자 + 1
        -> array[0] + " " + \(+1 한숫자)
     2. label1: 행복해 label2: 4 -> layout X
     */
    
    // [uibutton: uilabel] <- sender 를 사용해서 uilabel
    
//    @IBAction func buttonTapped(_ sender: UIButton) {
//        // sender 에 맞는 label을 찾아주기 dictionary 사용해서
//        if let label = dictionary[sender] {
//            if let labelTexts = label.text?.split(separator: " ") { // [행복해] count = 1
//                if labelTexts.count == 2 {
//                    // array 의 index 1 에 접근해서 숫자 빼내기
//                    // 만약, array 의 element 갯수가 1개면, 못빼옴. crash
//                    // 빼오려면, 반드시  array count가 2여야함.
//                    let number = labelTexts[1]
//                    if var num = Int(String(number)) { // 숫자로 변환 가능하면
//                        num += 1
//                        label.text = String(labelTexts[0]) + " \(num)"
//                        // assign new label to happyLabel's text
//                    }
//                } else if labelTexts.count == 1 {
//                    // 행복해 1
//                    // Label.text에 1을 추가로 넣어준다
//                    if let text = label.text {
//                        label.text = text + " 1"
//                    }
//                }
//            }
//        }
//
//    }



    
   
    
    
       

    
}
