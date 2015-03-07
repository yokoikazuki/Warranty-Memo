//
//  ExpiryViewController.swift
//  Warranty Memo
//
//  Created by 横井一樹 on 2015/03/07.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit
//import InfoViewController.swift

class ExpiryViewController: UIViewController {

    @IBOutlet var label1:UILabel!
    @IBOutlet var datePicker1:UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changed(sender: UIDatePicker) {
        label1.text = format(datePicker1.date, "yyyy年mm月dd日")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

func format(date : NSDate, style : String) -> String {
    let dateFormatter = NSDateFormatter()
    dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
    dateFormatter.dateFormat = style
    return  dateFormatter.stringFromDate(date)
    // format関数：日付データを文字列に変換する関数
}