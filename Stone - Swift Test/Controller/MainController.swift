//
//  ViewController.swift
//  Stone - Swift Test
//
//  Created by Lucas Pinto on 20/03/22.
//

import UIKit

class MainController: UIViewController {
    
    let info = ItemManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        info.getData()
        // Do any additional setup after loading the view.
    }


    @IBAction func requestButton(_ sender: UIButton) {
        
    }
}

