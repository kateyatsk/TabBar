//
//  ViewController.swift
//  TabBar
//
//  Created by Екатерина Яцкевич on 6.04.25.
//

import UIKit

protocol HomeViewDelegate {
    func setUserName(_ name: String)
}

class HomeViewController: UIViewController, HomeViewDelegate {
    func setUserName(_ name: String) {
        userNameLabel.text = name
    }
    

    lazy var userNameLabel: UILabel = {
        $0.text = "Имя"
        $0.font = .systemFont(ofSize: 62, weight: .regular)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var settingsButton: UIButton = {
        $0.setTitle("Настройки", for: .normal)
        $0.backgroundColor = .black
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.tintColor = .white
        return $0
    }(UIButton(primaryAction: action))
    
    lazy var action = UIAction {_ in 
        let settingVC = SettingsViewController()
        settingVC.delegate = self
        self.navigationController?.pushViewController(settingVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(userNameLabel, settingsButton)
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                userNameLabel.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor, constant: 59),
                userNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
                userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
                
                settingsButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:  -24),
                settingsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
                settingsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
                settingsButton.heightAnchor.constraint(equalToConstant: 60)
            ]
        )
    }

}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach({addSubview($0)})
    }
}
