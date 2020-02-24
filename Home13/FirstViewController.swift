
import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var shanegeColorSegmentController: UISegmentedControl!
    
    var backGroundColorMainView: UIColor?
    var colors: [Color] = [.red,.green,.blue]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shanegeColorSegmentController.removeAllSegments()
        
        for (i,color) in colors.enumerated() {
            shanegeColorSegmentController.insertSegment(withTitle: color.description(),
                                                        at: i,
                                                        animated: true)
        }
    }
    
    @IBAction func shanegeColorSegmentController(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            if self.shanegeColorSegmentController.selectedSegmentIndex == 0 {
                self.view.backgroundColor = .red
            } else if self.shanegeColorSegmentController.selectedSegmentIndex == 1 {
                self.view.backgroundColor = .green
            } else if  self.shanegeColorSegmentController.selectedSegmentIndex == 2 {
                self.view.backgroundColor = .blue
            }
        }
    }
}




// MARK: Extensions

extension FirstViewController {
    enum Color {
        case red
        case green
        case blue
        
        func description () -> String {
            switch self {
            case .red:
                return "Red"
            case .green:
                return "Green"
            case .blue:
                return "Blue"
            default:
                break
            }
        }
    }
}
