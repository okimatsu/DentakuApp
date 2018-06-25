import UIKit



enum Operator {
    case undefind  //未
    case addition  //加法
    case subtraction  //減法
    case multiplication  //乗法
    case division  //除法
}

class ViewController: UIViewController {
    
    @IBOutlet weak var lavel: UILabel!
    
    var firstValue = 0
    var secondValue = 0
    var currentOperator = Operator.undefind
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func numberButton(_ sender: UIButton) {
        var value = 0
        switch sender.currentTitle! {
        case "0":
            value = 0
        case "1":
            value = 1
        case "2":
            value = 2
        case "3":
            value = 3
        case "4":
            value = 4
        case "5":
            value = 5
        case "6":
            value = 6
        case "7":
            value = 7
        case "8":
            value = 8
        case "9":
            value = 9
        default:
            value = 0
        }
        
        if currentOperator == .undefind {
            firstValue = firstValue * 10 + value
            lavel.text = "\(firstValue)"
        } else {
            secondValue = secondValue * 10 + value
            lavel.text = "\(secondValue)"
        }
    }
    
    @IBAction func operatorButton(_ sender: UIButton) {
        switch sender.currentTitle! {
        case "+":
            currentOperator = .addition
        case "-":
            currentOperator = .subtraction
        case "×":
            currentOperator = .multiplication
        case "÷":
            currentOperator = .division
        default:
            currentOperator = .undefind
        }
    }
    
    @IBAction func allClearButton(_ sender: UIButton) {
        firstValue = 0
        secondValue = 0
        currentOperator = .undefind
        lavel.text = "0"
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        var value = 0
        switch currentOperator {
        case .addition:
            value = firstValue + secondValue
        case .subtraction:
            value = firstValue - secondValue
        case .multiplication:
            value = firstValue * secondValue
        case .division:
            value = firstValue / secondValue
        case .undefind:
            value = firstValue
            
        }
        lavel.text = "\(value)"
        firstValue = 0
        secondValue = 0
        currentOperator = . undefind
    }
    
}

