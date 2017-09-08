//
//  ViewController.swift
//  MyGuessNumber
//
//  Created by user22 on 2017/9/8.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var answer = ""
    @IBOutlet weak var guess: NSTextField!
    @IBOutlet weak var hist: NSTextField!
    
    @IBAction func doGuess(_ sender: Any) {
        
    }
    
    @IBAction func doReset(_ sender: Any) {
        
    }
    
    func createAnswer() -> String{
        var num = Array((0...9))
        num = shullfe(source: Array(num))
        var ret = ""
        for v in 0..<3 {
            ret += String(num[v])
        }
        return ret
    }
    
    func shullfe(source:Array<Int>) -> Array<Int> {
        var poker = source
        let n = poker.count
        var rand = -1
        var temp = -1
        var max = -1
        for i in 0..<n {
            max = n - i
            rand = Int(arc4random_uniform(UInt32(max)))
            
            // swap : poker[rand] <-> poker[last]
            temp = poker[rand];
            poker[rand] = poker[max-1]
            poker[max-1] = temp
        }
        return poker
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answer = createAnswer()
        print(answer)

    }
    override var representedObject: Any? {
        didSet {
        }
    }
}

