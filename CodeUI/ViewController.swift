//
//  ViewController.swift
//  CodeUI
//
//  Created by Pavel Paddubotski on 25.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        imageView.image = UIImage(named: "bmwMainBackground")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let mainLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 35))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BMW Connect"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        return label
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.backgroundColor = .white
        button.setTitle("Hello!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let loginTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 40, y: 50, width: 150, height: 35))
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 5
        textField.placeholder = "Login"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: textField.bounds.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 40, y: 140, width: 150, height: 35))
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 5
        textField.placeholder = "Password"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: textField.bounds.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.fill
        stackView.alignment = UIStackView.Alignment.fill
        stackView.spacing = 25
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImageView)
        view.addSubview(mainLabel)
        addConstraintsForMainLabel()
        
        view.addSubview(loginButton)
        addConstraintsForLoginButton()
        
        stackView.addArrangedSubview(loginTextField)
        stackView.addArrangedSubview(passwordTextField)
        addConstraintsForTextFields()
        
        view.addSubview(stackView)
        addConstraintsForStackView()
    }
    
    private func addConstraintsForMainLabel() {
        var constraints = [NSLayoutConstraint]()
        constraints.append(mainLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 70))
        constraints.append(mainLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -70))
        constraints.append(mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70))
        NSLayoutConstraint.activate(constraints)
    }
    
    private func addConstraintsForLoginButton() {
        var constraints = [NSLayoutConstraint]()
        constraints.append(loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 70))
        constraints.append(loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -70))
        constraints.append(loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -70))
        constraints.append(loginButton.heightAnchor.constraint(equalToConstant: 44))
        NSLayoutConstraint.activate(constraints)
    }
    
    private func addConstraintsForStackView() {
        var constraints = [NSLayoutConstraint]()
        constraints.append(stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor))
        constraints.append(stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5))
        NSLayoutConstraint.activate(constraints)
    }
    
    private func addConstraintsForTextFields() {
        var constraints = [NSLayoutConstraint]()
        constraints.append(loginTextField.heightAnchor.constraint(equalToConstant: 34))
        constraints.append(passwordTextField.heightAnchor.constraint(equalToConstant: 34))
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        print("Pressed!")
        UIView.animate(withDuration: 0.1) {
            sender.backgroundColor = .gray
            sender.backgroundColor = .white
        }
    }
}

