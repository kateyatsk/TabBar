//
//  ProfileViewController.swift
//  TabBar
//
//  Created by Екатерина Яцкевич on 6.04.25.
//

import UIKit

class ProfileViewController: UIViewController {
    var delegate: TabViewDelegate?
    
    lazy var profileLabel: UILabel = {
        $0.text = "Profile"
        $0.font = .systemFont(ofSize: 62, weight: .regular)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var backButton: UIButton = {
        $0.setTitle("На главную", for: .normal)
        $0.backgroundColor = .black
        $0.tintColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton(primaryAction: action))
    
    lazy var action = UIAction { _ in
        self.delegate?.setIndex(0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(profileLabel, backButton)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                profileLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 59),
                profileLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
                profileLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
                
                backButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:  -24),
                backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
                backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
                backButton.heightAnchor.constraint(equalToConstant: 60)
            ]
        )
    }
    
}
