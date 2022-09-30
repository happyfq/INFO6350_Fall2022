import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let TouristPlacesNames = ["Berlin","Roman","Greek","Paris","London"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TouristPlacesNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("TouristCell", owner: self)?.first as! TouristCell
        cell.imgTouristPlaces.image = UIImage(named: TouristPlacesNames[indexPath.row])
        cell.lblTouristPlaces.text = TouristPlacesNames[indexPath.row]
        return cell
    }
    

}
