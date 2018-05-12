import UIKit

class NavBarContoller: UIViewController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let logo = UIImage(named: "1")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
    }

 

}
