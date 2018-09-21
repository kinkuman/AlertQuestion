//
//  ViewController.swift
//  AlertQuestion
//
//  Created by user on 2018/09/21.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "認証", message: "秘密の言葉をいれなさい", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.delegate = self
        }
        
        alert.addAction(UIAlertAction(title: "認証", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        // 入力した文字が一致するか
        if textField.text == "himitu" {
            
            // 一致する場合は遷移先の画面をStoryboardから取り出し
            let next = self.storyboard?.instantiateViewController(withIdentifier: "himitu")
            
            // 遷移する
            self.present(next!, animated: true, completion: nil)
        }
    }


}

