
import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - collectionview datasource
extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: AppInfoCell = collectionView.dequeueReusableCell(withReuseIdentifier: AppInfoCell.cellIdentifier, for: indexPath) as! AppInfoCell
        
        let item: Int = indexPath.item
        cell.titleLabel.text = "\(item)"
        
        return cell
    }
}
