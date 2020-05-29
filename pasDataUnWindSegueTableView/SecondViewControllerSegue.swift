

import UIKit

class SecondViewControllerSegue: UIViewController {

    @IBOutlet weak var myButtonSecondNo: UIButton!
    @IBOutlet weak var myButtonSecondSave: UIButton!
    @IBOutlet weak var myTextFieldSecond: UITextField!
    var dataSecond: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextFieldSecond.text = dataSecond

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dataSecond1 = myTextFieldSecond.text {
            dataSecond = dataSecond1
        }
    }
    @IBAction func unWindNoSave(unWindNoSave: UIStoryboardSegue) {
        performSegue(withIdentifier: "viewNoData", sender: nil)
        
    }
    
    @IBAction func dissmiss() {
        dismiss(animated: true, completion: nil)
    }
    
    


}
