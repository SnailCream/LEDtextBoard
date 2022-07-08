//
//  realMainViewController.swift
//  textBoard
//
//  Created by 노준혁 on 2022/07/08.
//

import UIKit

func btnDesign(btnName: UIButton, btnContent: String) {
    btnName.setTitle(btnContent, for: .normal)
    btnName.backgroundColor = .yellow
    btnName.setTitleColor(.black, for: .normal)
    
}

class realMainViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel! // 텍스트가 보여지는 레이블
    
    @IBOutlet weak var userTextField: UITextField! // 유저가 입력하는 텍스트 필드
    
    @IBOutlet weak var btnSend: UIButton! // 전송버튼
    @IBOutlet weak var btnChangeColor: UIButton! // 색 변경 버튼
    
    @IBOutlet var mainView: UIView! // 메인 뷰
    @IBOutlet weak var embedView: UIView! // 버튼 + 텍스트필드 임베디드 뷰
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = .white
        embedView.backgroundColor = .lightGray

        btnDesign(btnName: btnSend, btnContent: "전송")
        btnDesign(btnName: btnChangeColor, btnContent: "색 변경")
    }
    
    @IBAction func btnSendAction(_ sender: UIButton) {
        textLabel.text = userTextField.text
        view.endEditing(true)
        
    }
    
    
    
    
    
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}
