

// Created on: Nov-13-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for the volume of cylinder
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLable = UILabel()
    let radiusLable = UILabel()
    let radiusTextField = UITextField()
    let heightLable = UILabel()
    let heightTextField = UITextField()
    let volumeLable = UILabel()
    let answerButton = UIButton()
     
    func volumeFunction(radiusNumber: Float, heightNumber: Float) -> Float {
        let PI : Float = 3.14
        var volumeNumber = PI * pow(Float(radiusNumber), 2) * heightNumber
        
        
        return volumeNumber
    }

    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter the radius of a cylinder and height & we will calculate the volume."
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        radiusLable.text = "Enter radius"
        view.addSubview(radiusLable)
        radiusLable.translatesAutoresizingMaskIntoConstraints = false
        radiusLable.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 10).isActive = true
        radiusLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        radiusTextField.borderStyle = UITextField.BorderStyle.roundedRect
        radiusTextField.placeholder = "Put a whole number  "
        view.addSubview(radiusTextField)
        radiusTextField.translatesAutoresizingMaskIntoConstraints = false
        radiusTextField.topAnchor.constraint(equalTo: radiusLable.bottomAnchor, constant: 5).isActive = true
        radiusTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        heightLable.text = "Enter height: "
        view.addSubview(heightLable)
        heightLable.translatesAutoresizingMaskIntoConstraints = false
        heightLable.topAnchor.constraint(equalTo: radiusTextField.bottomAnchor, constant: 10).isActive = true
        heightLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        heightTextField.borderStyle = UITextField.BorderStyle.roundedRect
        heightTextField.placeholder = "Put a whole number  "
        view.addSubview(heightTextField)
        heightTextField.translatesAutoresizingMaskIntoConstraints = false
        heightTextField.topAnchor.constraint(equalTo: heightLable.bottomAnchor, constant: 5).isActive = true
        heightTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Answer", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(calculateVolume), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: heightTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        volumeLable.text = nil
        view.addSubview(volumeLable)
        volumeLable.translatesAutoresizingMaskIntoConstraints = false
        volumeLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        volumeLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func calculateVolume() {
        // show answers 
        
        var radius : Float =  Float(Int(radiusTextField.text!)!)
        var height : Float =  Float(Int(heightTextField.text!)!)
        var volume = volumeFunction(radiusNumber: Float(radius),heightNumber: Float(height))
        
        volumeLable.text = String(format:"The volume is: %.02f cm^3.", volume)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
