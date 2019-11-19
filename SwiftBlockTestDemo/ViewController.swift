//
//  ViewController.swift
//  SwiftBlockTestDemo
//
//  Created by zhaochunyang on 2019/11/19.
//  Copyright © 2019 zhaochunyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// 闭包表达式语法
    /// { (parameters/接收的参数) -> (return type/闭包返回值类型) in
    ///      statements/保存在闭包中需要执行的代码
    /// }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(testButton)
    }

    
    @objc func nextVC() {
        let secondVC = SecondViewController.init()
        self.navigationController?.pushViewController(secondVC, animated: true)

        secondVC.nothingBlock1 = {
            print("触发 nothingBlock1")
        }
        
        
        
        
        
        
    }
    
    lazy var testButton: UIButton = {
        let button = UIButton.init(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
        button.backgroundColor = .red
        button.setTitle("next", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        return button
    }()

}

