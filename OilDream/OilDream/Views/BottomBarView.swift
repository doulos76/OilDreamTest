//
//  BottomBarView.swift
//  OilDream
//
//  Created by dave76 on 13/11/2018.
//  Copyright © 2018 dave76. All rights reserved.
//

import UIKit

// Setting CustomButton intrinsicContentSize
class CustomButton: UIButton {
  override var intrinsicContentSize: CGSize {
    return CGSize(width: 48, height: 48)
  }
}

class BottomBarView: UIView {
  let currentLocationButton: CustomButton = {
    let button = CustomButton()
    button.setImage(UIImage(named: "currentGPS"), for: .normal)
    button.tintColor = .darkGray
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let closeButton: CustomButton = {
    let button = CustomButton()
    button.setImage(UIImage(named: "closeButton"), for: .normal)
    button.tintColor = .darkGray
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  let listButton: CustomButton = {
    let button = CustomButton()
    button.setImage(UIImage(named: "list"), for: .normal)
    button.tintColor = .darkGray
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = .naviBarCustomYellow
    setupStackView()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func setupStackView() {
    let arrangedSubViews = [
      currentLocationButton,
      listButton,
      closeButton
    ]
    
    let stackView = UIStackView(arrangedSubviews: arrangedSubViews)
    stackView.axis = .horizontal
    stackView.distribution = .equalSpacing
    addSubview(stackView)
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    
    stackView.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
  }
  
}
