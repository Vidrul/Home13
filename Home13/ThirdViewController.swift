// Насчет третьего задания не уверен!

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var firstBlackView: UIView!
    @IBOutlet weak var secondBlackView: UIView!
    @IBOutlet weak var thirdBlackView: UIView!
    
    var duration: Double = 2.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func firstBlackViewDidClick(_ sender: Any) {
        animatedSomeOne(BlackView: firstBlackView)
    }
    
    @IBAction func secondBlackViewDidClick(_ sender: Any) {
        animatedSomeOne(BlackView: secondBlackView)
    }
    
    
    @IBAction func thirdBlackViewDidClick(_ sender: Any) {
        animatedSomeOne(BlackView: thirdBlackView)
    }
}



extension ThirdViewController {
    func animatedSomeOne (BlackView: UIView) {
        UIView.animate(withDuration: self.duration, animations: {
            self.moveDown(view: BlackView)
        }) { (finished) in
            if finished  {
                UIView.animate(withDuration: self.duration) {
                    self.moveUp(view: BlackView)
                }
            }
        }
    }
    
    func moveDown (view: UIView) {
        view.center.y += 748
    }
    
    func moveUp (view: UIView) {
        view.center.y -= 748
    }
}
