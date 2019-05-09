//
//  ViewController.swift
//  Date_test
//
//  Created by Masato Hayakawa on 2019/05/09.
//  Copyright © 2019 masappe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let date = Date()
        print("date\(date)")

        let calendar = Calendar.current
        var datecomponents = DateComponents()
//        datecomponents.month = 2
//        datecomponents.day = 1
        datecomponents.hour = 9
        //toの日付からbyAddingぶんずらす
        let changeDate = calendar.date(byAdding: datecomponents, to: date)
        print(changeDate)
        
        //日にちのフォーマット
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        let dateFormatter = formatter.string(from: date)
        print(dateFormatter)
        
        //time zoneを使用
        var components = Calendar.current.dateComponents([.year,.month,.day], from: date)
        components.day = 1
        let first = Calendar.current.date(from: components)
        print("first\(first)")
        
        let component = calendar.dateComponents([.year,.month,.day], from: date
            , to: first!)
        let second = calendar.date(from: component)
        print("second\(second)")
    }


}

