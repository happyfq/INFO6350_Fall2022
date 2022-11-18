//
//  DashboardViewController.swift
//  InstaTok
//
//  Created by Fq W on 11/17/22.
//

import UIKit
import FirebaseAuth

class DashboardViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    let arr = ["Wendy","Jane","Jim"]

    @IBOutlet weak var tblView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func logoutAction(_ sender: Any) {
        let keychain = KeyChainService().keyChain
                keychain.clear()

                do {
                    try Auth.auth().signOut()
                }
                catch{
                    print("Unable to logout")
                }

                self.navigationController?.popViewController(animated: true)
                
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ImagePostTableViewCell", owner: self)?.first as! ImagePostTableViewCell
       
       cell.imgView.image = UIImage(named: "LA")
       cell.caption.text = "Caption"
        cell.location.text = "Location"
        cell.datetime.text = "DateTime"
        

       return cell
    }
    
  
    
    
}
