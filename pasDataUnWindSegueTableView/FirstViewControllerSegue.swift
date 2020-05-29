

import UIKit

class FirstViewControllerSegue: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myButtonFirst: UIButton!
    @IBOutlet weak var myLabelViewFirst: UILabel!
    @IBOutlet weak var myTableViewFirst: UITableView!
    
    var  arrayName: [String] = ["dang","ngoc","long","mot","hai"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableViewFirst.dataSource = self
        myTableViewFirst.delegate = self
        
    }

    @IBAction func unWindSegueFisrt(unwindSegue: UIStoryboardSegue) {
        performSegue(withIdentifier: "ShowFirst", sender: nil)
        if unwindSegue.source is SecondViewControllerSegue {
            if let unWindSegueFirst = unwindSegue.source as? SecondViewControllerSegue {
                arrayName.append(unWindSegueFirst.dataSecond)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDcell", for: indexPath)
        cell.textLabel?.text = arrayName[indexPath.row]
        
        return cell
    }
    // goi ham nay de bam vao no chuyen sang man khac
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextStoruboardSecond = storyboard?.instantiateViewController(identifier: "IDSecond") as? SecondViewControllerSegue
        nextStoruboardSecond?.dataSecond = arrayName[indexPath.row]
        
        self.navigationController?.pushViewController(nextStoruboardSecond!, animated: true)
    }

    

}
