//
//  HomeController.swift
//  SideMenu
//
//  Created by PAUL on 20/03/2019.
//  Copyright © 2019 PAUL. All rights reserved.
//

import UIKit


class HomeController: UIViewController{
    
    //MARK - Properties
    var delegate: HomeControllerDelgate?
    
    //MARK - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        configurenavigationBar()
    }
   
    //MARK - Handler
    @objc func handMenuToggle(){
        delegate?.HandleMenuToggle(forMenuOption: nil)
    }
    func configurenavigationBar(){
        navigationController?.navigationBar.barTintColor = .gray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handMenuToggle))
    }
    
}

