//
//  ViewController.swift
//  HW4-login
//
//  Created by Dmitry Tokarev on 23.10.2020.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround() //переделать функцию
        
        }

    @IBAction func logInButtonAction(){ //УПРОСТИТЬ
        
        if userNameTextField.text == firstUser.user && passwordTextField.text == firstUser.password {
        } else {
            showAlert(with: "You Wrong!", and: "Please enter correct password")
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
        return
    }
    @IBAction func forgotPasswordButton() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
        return
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super .touchesBegan(touches, with: event)
//
//    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let selfVC = tabBarController.viewControllers?.first as! SelfViewController
        selfVC.userName = userNameTextField.text ?? ""
    }
    
    @IBAction func clearTextField(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}


//MARK: = Hide keyboard
extension UIViewController { //расширение скрывает клавиатуру при тапе
    func hideKeyboardWhenTappedAround() {
     let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
      tap.cancelsTouchesInView = false
      view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
       view.endEditing(true)
    }
}

// MARK: - Alert Controller
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
