//
//  FirstViewController.swift
//  DemoChangeChildOnTabbar
//
//  Created by Vien Vu on 18/02/2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    var firstChildVC: FirstChildViewController!
    var secondChildVC: SecondChildViewController!
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupChildVC()
    }
    
    func setupChildVC() {
        firstChildVC = storyboard?.instantiateViewController(identifier: "FirstChildViewController")
        secondChildVC = storyboard?.instantiateViewController(identifier: "SecondChildViewController")
        
        addChild(firstChildVC)
        view.addSubview(firstChildVC.view)
        firstChildVC.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        firstChildVC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        firstChildVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        firstChildVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        firstChildVC.didMove(toParent: self)
        
        addChild(secondChildVC)
        view.addSubview(secondChildVC.view)
        secondChildVC.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        secondChildVC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        secondChildVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        secondChildVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        secondChildVC.didMove(toParent: self)
        
        updateViewState()
    }
    
    func updateViewState() {
        firstChildVC.view.isHidden = delegate.isUserLogged
        secondChildVC.view.isHidden = !delegate.isUserLogged
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        updateViewState()
    }

}
