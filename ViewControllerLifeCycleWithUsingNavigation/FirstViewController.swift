//
//  FirstViewController.swift
//  ViewControllerLifeCycleWithUsingNavigation
//
//  Created by Shaikat on 11/4/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print("First View Controller - View Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First View Controller - View Will Appear")
        //self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("First View Controller - View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("First View Controller - View Will Disappear")
        //self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.isHidden = false

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("First View Controller - View Did Disappear")
    }
    
    
    @IBAction func ButtonPressed(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let secondVc = storyBoard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
           // navigationController?.pushViewController(secondVc, animated: true)
            //navigationController?.present(secondVc, animated: true, completion: nil)
            present(secondVc, animated: true, completion: nil)
            
            //mark: 1. present works with or without navigation controller , but to push a VC we always need a navigation controller 
        }
    }
}
