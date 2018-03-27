//
//  ViewController.swift
//  Click Counter
//
//  Created by Joshua Queen on 3/14/18.
//  Copyright © 2018 Joshua Queen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
    var mylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //My Label
        let mylabel = UILabel()
        mylabel.frame = CGRect(x: 150, y: 450, width: 150, height: 60)
        mylabel.text = "My Label"
        view.addSubview(mylabel)
        self.mylabel = mylabel
        
        //inc button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 100, height: 60)
        button.setTitle("Increase", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        view.addSubview(button)
        
        //dec button
        let decButton = UIButton()
        decButton.frame = CGRect(x: 150, y: 350, width: 100, height: 60)
        decButton.setTitle("Decrease", for: .normal)
        decButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decButton)
        
        //inc action
        button.addTarget(self, action: #selector(ViewController.incrementCounter), for: UIControlEvents.touchUpInside)
        
        button.addTarget(self, action: #selector(ViewController.changeColor), for: UIControlEvents.touchUpInside)
        
        //dec action
        decButton.addTarget(self, action: #selector(ViewController.decrementCounter), for: UIControlEvents.touchUpInside)
        
        decButton.addTarget(self, action: #selector(ViewController.changeColor), for: UIControlEvents.touchUpInside)
        
    }
    
    @objc func incrementCounter(){
        self.count+=1
        self.label.text = "\(self.count)"
        
    }
    
    @objc func decrementCounter(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    @objc func changeColor(){
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        self.mylabel.textColor = UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
}

