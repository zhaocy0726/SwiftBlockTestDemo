//
//  SecondViewController.swift
//  SwiftBlockTestDemo
//
//  Created by zhaochunyang on 2019/11/19.
//  Copyright © 2019 zhaochunyang. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    /// 闭包类型
    /// (parameters/接收的参数) -> (return type/闭包返回值类型)
       
    //为接受一个Int类型的参数不返回任何值的闭包类型 定义一个别名：PrintNumber
      typealias PrintNumber = (Int) -> ()
       
    //为接受两个Int类型的参数并且返回一个Int类型的值的闭包类型 定义一个别名：Add
      typealias Add = (Int, Int) -> (Int)
    
    
    // 无参 无返回值
    var nothingBlock1: (() -> ())?
    typealias nothingBlock2 = () -> Void
    
    // 有参 无返回值
    var paramBlock1: ((String) -> ())?
    typealias paramBlock2 = (_ message: String) -> Void
    
    // 有参 有返回值
    var paramReturnBlock1: ((String) -> (String))?
    typealias paramReturnBlock2 = (_ name: String, _ age: Int) -> (String)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(testButton)
    }
    
    @objc func popView() {
        nothingBlock1?()
        
        
        
        
        self.navigationController?.popViewController(animated: true)
    }
    
    lazy var testButton: UIButton = {
        let button = UIButton.init(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
        button.backgroundColor = .red
        button.setTitle("back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(popView), for: .touchUpInside)
        return button
    }()
    
}
