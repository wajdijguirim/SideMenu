//
//  SettingsController.swift
//  SideMenu
//
//  Created by PAUL on 25/03/2019.
//  Copyright © 2019 PAUL. All rights reserved.
//

import UIKit

class SettingsController: UIViewController{
    
   
    
    //Mark properties
    
    
    //Mark init
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    // MARK selectors
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    //Mark handlers functions
    func configureUI(){
        
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
        
    }
    
}
