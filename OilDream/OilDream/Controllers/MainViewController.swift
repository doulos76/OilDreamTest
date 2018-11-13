//
//  ViewController.swift
//  OilDream
//
//  Created by dave76 on 13/11/2018.
//  Copyright © 2018 dave76. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {


  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    view.backgroundColor = .white
    
    setupNavigationBarUI()
  }
  
  // MARK:- fileprivate method
  fileprivate func setupNavigationBarUI() {
    navigationItem.title = "오일 드림"
    navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearch))
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "setting"), style: .plain, target: self, action: #selector(handleSettings))
  }
  
  
  @objc func handleSearch() {
    
  }
  
  @objc func handleSettings() {
    
  }

}

