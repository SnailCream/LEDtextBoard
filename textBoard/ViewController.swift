//
//  ViewController.swift
//  textBoard
//
//  Created by 노준혁 on 2022/07/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.placeholder = "내용을 입력해주세요"
        textField.keyboardType = .emailAddress
        
        sendBtn.setTitle("전송", for: .normal)
        sendBtn.setTitle("떼십쇼", for: .highlighted)
        sendBtn.backgroundColor = .yellow
        sendBtn.layer.cornerRadius = 8
        sendBtn.layer.borderColor = UIColor.black.cgColor
        sendBtn.layer.borderWidth = 3 // 테두리 두깨
        sendBtn.setTitleColor(.red, for: .normal)
        sendBtn.setTitleColor(.blue, for: .highlighted)
    }
    
    

    @IBAction func sendBtnClicked(_ sender: UIButton) {
        resultLabel.text = textField.text
    }
    
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.backgroundColor = .white
        view.endEditing(true)
    }
    
    
    
}

