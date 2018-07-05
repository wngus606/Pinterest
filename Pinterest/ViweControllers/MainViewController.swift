
import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialization()
    }
}

// MARK: - Custom mehtod
extension MainViewController {
    
    func initialization() {
        if let layout = collectionView.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
        
        collectionView.contentInset = UIEdgeInsetsMake(10, 10, 10, 10)
    }
}

// MARK: - UICollectionViewDataSource
extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: AppInfoCell = collectionView.dequeueReusableCell(withReuseIdentifier: AppInfoCell.cellIdentifier, for: indexPath) as! AppInfoCell
        
        let item: Int = indexPath.item
        cell.imageView.image = UIImage(named: "placeholder")
        cell.titleLabel.text = "\(item)"
        
        return cell
    }
}

// MARK: - PinterestLayoutDelegate
extension MainViewController: PinterestLayoutDelegate {
    
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
