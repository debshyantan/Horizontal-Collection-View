import UIKit
import Pastel


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var button: UIButton!
    
    let ImageArray = ["1", "2", "3", "4", "5", "6"]
    let captionArray = ["spiti", "KV", "GMSSS", "Mount carmel", "British School", "Sikhya"]
    let sector = ["Mohali", " sec 31" ," sec 33", "sec 47", "Sec 42", "Sec 46"]
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        
        let pastelView = PastelView(frame: view.bounds)
        
        // Custom Direction
        pastelView.startPastelPoint = .bottomLeft
        pastelView.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView.animationDuration = 3.0
        
        // Custom Color
        pastelView.setColors([UIColor(red: 156/255, green: 39/255, blue: 176/255, alpha: 1.0),
                              UIColor(red: 255/255, green: 64/255, blue: 129/255, alpha: 1.0),
                              UIColor(red: 123/255, green: 31/255, blue: 162/255, alpha: 1.0)])
//                              UIColor(red: 32/255, green: 76/255, blue: 255/255, alpha: 1.0)])
//                              UIColor(red: 32/255, green: 158/255, blue: 255/255, alpha: 1.0),
//                              UIColor(red: 90/255, green: 120/255, blue: 127/255, alpha: 1.0),
//                              UIColor(red: 58/255, green: 255/255, blue: 217/255, alpha: 1.0)
        
//        pastelView.startAnimation()
//        view.insertSubview(pastelView, at: 0)
        
        
        
        let gradient: CAGradientLayer = CAGradientLayer()
        
        gradient.colors = [(UIColor(red: 156/255, green: 39/255, blue: 176/255, alpha: 1.0).cgColor), (UIColor(red: 255/255, green: 64/255, blue: 129/255, alpha: 1.0).cgColor) , (UIColor(red: 123/255, green: 31/255, blue: 162/255, alpha: 1.0).cgColor)]
        gradient.locations = [0.0 , 1.0]
        
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: button.frame.size.width, height: button.frame.size.height)
        button.layer.insertSublayer(gradient, at: 0)
        
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImageArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturedCustomCell", for: indexPath) as! FeaturedCustomCell
        cell.imageView.image = UIImage(named: ImageArray[indexPath.item])
        cell.nameLabel.text = captionArray[indexPath.item]
        cell.schoolSectorLabel.text = sector[indexPath.item]
        return cell
        
    }
    
    
    
}

