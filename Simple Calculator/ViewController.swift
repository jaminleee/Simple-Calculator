import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text ?? "0"), let secondNumber = Int(secondText.text ?? "0") {
            let result = firstNumber + secondNumber
            resultLabel.text = "\(result)"
        }
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text ?? "0"), let secondNumber = Int(secondText.text ?? "0") {
            let result = firstNumber - secondNumber
            resultLabel.text = "\(result)"
        }
    }
    
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text ?? "0"), let secondNumber = Int(secondText.text ?? "0") {
            let result = firstNumber * secondNumber
            resultLabel.text = "\(result)"
        }
    }
    
    
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text ?? "0"), let secondNumber = Int(secondText.text ?? "0"), secondNumber != 0 {
            let result = firstNumber / secondNumber
            resultLabel.text = "\(result)"
        } else {
            resultLabel.text = "Error: Divide by zero"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }
    
    
}

