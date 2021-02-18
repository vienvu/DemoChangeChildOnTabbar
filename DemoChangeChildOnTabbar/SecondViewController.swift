//
//  SecondViewController.swift
//  DemoChangeChildOnTabbar
//
//  Created by Vien Vu on 18/02/2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    let delegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonIsTapped(_ sender: Any) {
        delegate.isUserLogged = !delegate.isUserLogged
    }
    
}
