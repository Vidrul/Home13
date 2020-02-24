
import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var buttonLeft: UIButton!
    @IBOutlet weak var buttonRight: UIButton!
    
    var turn: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.layer.cornerRadius = 10
        buttonLeft.layer.cornerRadius = 10
        buttonRight.layer.cornerRadius = 10
    }
    
    
    @IBAction func turnLeft(_ sender: UIButton) {
        turn -= .pi / 2
        UIView.animate(withDuration: 1.0) {
            self.image.transform = CGAffineTransform(rotationAngle: self.turn)
        }
    }
    
    @IBAction func turnRight(_ sender: UIButton) {
        turn += .pi / 2
        UIView.animate(withDuration: 1.0) {
            self.image.transform = CGAffineTransform(rotationAngle: self.turn)
        }
    }
    
    
    
    
    
    
    
    
    
}
extension SecondViewController {
    func createSecondViewController() -> SecondViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        return secondViewController
    }
}


