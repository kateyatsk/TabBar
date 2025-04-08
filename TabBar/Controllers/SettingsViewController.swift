//
//  SettingsViewController.swift
//  TabBar
//
//  Created by Екатерина Яцкевич on 6.04.25.
//

import UIKit

class SettingsViewController: UIViewController {
    var delegate: HomeViewDelegate?
    
    lazy var userName: UITextField = {
        $0.placeholder = "Имя пользователя"
        $0.backgroundColor = .systemGray2
        $0.textColor = .systemGray6
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 21, height: 0))
        $0.leftViewMode = .always
        $0.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 21, height: 0))
        $0.rightViewMode = .always
        return $0
    }(UITextField())
    
    lazy var saveButton: UIButton = {
        $0.setTitle("Сохранить", for: .normal)
        $0.backgroundColor = .black
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.tintColor = .white
        return $0
    }(UIButton(primaryAction: action))
    
    lazy var action = UIAction {_ in 
        let name = self.userName.text ?? ""
        self.delegate?.setUserName(name)
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(userName, saveButton)
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                userName.topAnchor.constraint(equalTo: view.topAnchor, constant: 295),
                userName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
                userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
                userName.heightAnchor.constraint(equalToConstant: 60),
                
                saveButton.topAnchor.constraint(equalTo: userName.bottomAnchor, constant:  28),
                saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
                saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
                saveButton.heightAnchor.constraint(equalToConstant: 60)
            ]
        )
    }
}
