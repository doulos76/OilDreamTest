//
//  ViewController.swift
//  OilDream
//
//  Created by dave76 on 13/11/2018.
//  Copyright © 2018 dave76. All rights reserved.
//

import MapKit
import CoreLocation
import UIKit

class MainViewController: UIViewController {
  
  
  var mapView: MKMapView = {
    let map = MKMapView()
    map.translatesAutoresizingMaskIntoConstraints = false
    return map
  }()

  var bottomBarView = BottomBarView()
  
  private let locationManager = CLLocationManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    locationManager.delegate = self
    view.backgroundColor = .white
    
    setupNavigationBarUI()
    setupViewLayout()
  }
  
  // MARK:- fileprivate method
  fileprivate func setupNavigationBarUI() {
    navigationItem.title = "오일 드림"
    navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearch))
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "setting"), style: .plain, target: self, action: #selector(handleSettings))
  }
  
  fileprivate func setupViewLayout() {
    view.addSubview(mapView)
    view.addSubview(bottomBarView)
    
    mapView.anchor(top: view.topAnchor, bottom: bottomBarView.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeading: 0, paddingTrailing: 0, width: 0, height: 0)
    bottomBarView.anchor(top: nil, bottom: view.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeading: 0, paddingTrailing: 0, width: 0, height: 0)
    bottomBarView.heightAnchor.constraint(equalToConstant: 100).isActive = true
  }
  
  @objc func handleSearch() {
    let searchController = SearchController()
    let navigationController = CustomNavigationController(rootViewController: searchController)
    present(navigationController, animated: true, completion: nil)
  }
  
  @objc func handleSettings() {
    let settingsController = SettingsController()
    let navigationController = CustomNavigationController(rootViewController: settingsController)
    present(navigationController, animated: true, completion: nil)
  }

}

extension MainViewController: CLLocationManagerDelegate {
  
}
