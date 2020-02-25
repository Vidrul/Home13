// Насчет третьего задания не уверен!

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var firstBlackView: UIView!
    @IBOutlet weak var secondBlackView: UIView!
    @IBOutlet weak var thirdBlackView: UIView!
    
    var duration: Double = 2.0
    let leadingMargin: CGFloat = 40.0
    var state: Bool = false
    
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
            self.moveDown(myView: BlackView)
        })
    }
    func moveDown (myView: UIView) {
        if self.view.frame.size.height / 2 > myView.frame.origin.y {
            let x = view.frame.size.height - view.safeAreaInsets.bottom - myView.frame.height
            myView.frame.origin.y = x
        } else {
            myView.frame.origin.y = 44.0
        }
        
    }
}
