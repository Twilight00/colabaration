import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var StoredValues = Values()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {//
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "meunSegue", sender: self)
        
       func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                _ = segue.destination as! SecondViewController
    }
}

    
    // This is where it is all seperated and the second view controller is used more.
class SecondViewController: UIViewController {

    var recievedData = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print(recievedData)
    }
}
    
    
    
    
    
    
    @IBOutlet weak var functionDisplay: UILabel!
    
    
    
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperValueChange(_ sender: UIStepper) {
        valueCount["childCount"]! = Int(sender.value)
        valueLabel.text = valueCount["childCount"]!.description
        }
    
    
    @IBOutlet weak var ASB: UIStepper!
    
    @IBOutlet weak var ASBCount: UILabel!
    
    @IBAction func ASBAction(_ sender: UIStepper) {
        valueCount["asb"]! = Int(sender.value)
        ASBCount.text = valueCount["asb"]!.description
    }
    
    @IBOutlet weak var StudentWoCount: UILabel!
    
    @IBOutlet weak var StudentWoStepper: UIStepper!
    
    @IBAction func StudentWoAction(_ sender: UIStepper) {
        valueCount["studentWo"]! = Int(sender.value)
        StudentWoCount.text = valueCount["studentWo"]!.description
        }
    
    @IBOutlet weak var StudentWID: UIStepper!
    
    @IBOutlet weak var StudentWIDCount: UILabel!
    
    @IBAction func StudentWIDAction(_ sender: UIStepper) {
        valueCount["studentW"]! = Int(sender.value)
        StudentWIDCount.text = valueCount["studentW"]!.description
    }
    
    @IBOutlet weak var AdultStepper: UIStepper!
    
    @IBOutlet weak var AdultCount: UILabel!
    
    @IBAction func AdultAction(_ sender: UIStepper) {
        valueCount["adults"]! = Int(sender.value)
        AdultCount.text = valueCount["adults"]!.description
    }
    
    
    @IBOutlet weak var SeniorStepper: UIStepper!
    
    @IBOutlet weak var SeniorCounter: UILabel!
    
    @IBAction func SeniorAction(_ sender: UIStepper) {
        valueCount["senior"]! = Int(sender.value)
        SeniorCounter.text = valueCount["senior"]!.description
    }
    
    
    
    //text field of yes or no for purchase yesy
    
    @IBOutlet weak var decisionText: UILabel!
    var ok = "In the clear"
    var nope = "Don't you dare"
    
    // yes and no would allow for the purchase to be confirmed and would disable the purchase before the confirmation of a refund would be made
    @IBAction func yes(_ sender: AnyObject) {
    }
    
    @IBAction func no(_ sender: AnyObject) {
    }
    // allows for the button to be called for when wanted to hide later
    @IBOutlet weak var yesProperties: UIButton!
    
    @IBOutlet weak var noProperties: UIButton!
    
    
    
    
    
    
    //purchase button to add the rest to the tally and reset the stepper and text values
    //claculates :subtotal button
    

    @IBAction func Subtotal(_ sender: UILabel) {
        
        functionDisplay.text = calculatorreturn().description
        
      /*  if(StoredValues.currentChildCount == 0 && StoredValues.childStepperCount<0 ){
            StoredValues.totalChildCount != 0 && StoredValues.TotMones != 0
        }*/
      
        switch StoredValues.childStepperCount{
        case _ where StoredValues.childStepperCount < 0 :
            print(decisionText.text = nope)
            
        default:
            print(decisionText.text = ok)
            
        }
        
        
        StoredValues.childStepperCount = Double(valueLabel.text!)!
        
        
        StoredValues.currentChildCount = StoredValues.currentChildCount + Double(valueLabel.text!)!
        
        StoredValues.currentStudentWoCount = StoredValues.currentStudentWoCount + Double(StudentWoCount.text!)!
        
        StoredValues.currentStudentWCount = StoredValues.currentStudentWCount + Double(StudentWIDCount.text!)!
        
        StoredValues.currentASBCount = StoredValues.currentASBCount + Double(ASBCount.text!)!
        
        StoredValues.currentadultsCount = StoredValues.currentadultsCount + Double(AdultCount.text!)!
        
        StoredValues.currentseniorwCard = StoredValues.currentseniorwCard + Double(SeniorCounter.text!)!
 
        
        valueLabel.text = "0"
        stepper.value=0
        valueCount["childCount"]! = 0
        stepper.minimumValue = -1

        
        StudentWoStepper.value=0
        StudentWoCount.text = "0"
        valueCount["studentWo"]! = 0
        
        
        StudentWID.value = 0
        StudentWIDCount.text = "0"
        valueCount["studentW"]! = 0

                
        ASB.value = 0
        ASBCount.text = "0"
        valueCount["asb"]! = 0
        
                
        AdultStepper.value = 0
        AdultCount.text = "0"
        valueCount["adults"]! = 0
        
        
        SeniorStepper.value = 0
        SeniorCounter.text = "0"
        valueCount["senior"]! = 0
        
        
        subFalse()
    }
    
    
    
    
    
    
    
  
    
    //below is meant to reset current tally
    //also meant to show subtotal price before purchase
    
    @IBAction func Purchase(_ sender: UILabel) {

        
        StoredValues.subtotal = Double(functionDisplay.text!)!
        //Use this to have it hold the total amount
        StoredValues.TotMones =  StoredValues.subtotal + StoredValues.TotMones
       
        StoredValues.totalChildCount = StoredValues.currentChildCount + StoredValues.totalChildCount // add current child count to running total
        
        
        moneyTotal.text = StoredValues.TotMones.description
        
        tCC.text = StoredValues.totalChildCount.description // update total child count label from new child value
        TotalStudentWOCount.text = StoredValues.totalStudentWOCount.description
        
        TotalStudentWCount.text = StoredValues.totalStudentWCount.description
        
        TotalASBCount.text = StoredValues.totalASBCount.description
        
        TotalAdultCount.text = StoredValues.totalAdultsCount.description
        
        TotalSeniorCount.text = StoredValues.currentseniorwCard.description
        
        
        StoredValues.totalStudentWOCount = StoredValues.currentStudentWoCount + StoredValues.totalStudentWOCount
        
        StoredValues.totalStudentWCount = StoredValues.currentStudentWCount + StoredValues.totalStudentWCount
        
        StoredValues.totalASBCount = StoredValues.currentASBCount + StoredValues.totalASBCount
        
        StoredValues.totalAdultsCount = StoredValues.currentadultsCount + StoredValues.totalAdultsCount
        
        StoredValues.totalSeniorCount = StoredValues.currentseniorwCard + StoredValues.totalSeniorCount
        totalsInfo()

        functionDisplay.text = "0"
        subtotalReset()
        subTrue()
        
    }
    
    
    //TotalChildCount
    @IBOutlet weak var tCC: UILabel!
    //TotalStudentWOCount
    @IBOutlet weak var TotalStudentWOCount: UILabel!
    //TotalStudentWCount
    @IBOutlet weak var TotalStudentWCount: UILabel!
    //TotalAdultCount
    @IBOutlet weak var TotalAdultCount: UILabel!
    //TotalSeniorCount
    @IBOutlet weak var TotalSeniorCount: UILabel!
    //TotalASBCount
    @IBOutlet weak var TotalASBCount: UILabel!
    
    
    
    
    
    // this is for the all of the money added together
    @IBOutlet weak var moneyTotal: UILabel!
    
    //Total Person Count
    @IBOutlet weak var TotalPersonCount: UILabel!
    
    //meant to cancel the price of subtotal
    @IBAction func Cancel(_ sender: UILabel) {
        functionDisplay.text = "0"
        subtotalReset()
        
        
        subTrue()
        }
    

    
    
    func subTrue()
    {
        SubtotalOut.isHidden = false
        SubtotalOut.isEnabled = true
        
        CancelOut.isHidden = true
        CancelOut.isEnabled = false
        
        PurchaseOut.isHidden = true
        PurchaseOut.isEnabled = false
        
    }
    
    func subFalse()
    {
        SubtotalOut.isHidden = true
        SubtotalOut.isEnabled = false
        
        CancelOut.isHidden = false
        CancelOut.isEnabled = true
        
        PurchaseOut.isHidden = false
        PurchaseOut.isEnabled = true
    }
    func subtotalReset()
    {
        StoredValues.subtotal = 0
        StoredValues.currentChildCount = 0
        StoredValues.currentStudentWoCount = 0
        StoredValues.currentStudentWCount = 0
        StoredValues.currentASBCount = 0
        StoredValues.currentadultsCount = 0
        StoredValues.currentseniorwCard = 0
    }
    func totalsInfo() {
        
        moneyTotal.text = StoredValues.TotMones.description
        
        tCC.text = StoredValues.totalChildCount.description
        
        TotalStudentWOCount.text = StoredValues.totalStudentWOCount.description
        
        TotalStudentWCount.text = StoredValues.totalStudentWCount.description
        
        TotalASBCount.text = StoredValues.totalASBCount.description
        
        TotalAdultCount.text = StoredValues.totalAdultsCount.description
        
        TotalSeniorCount.text = StoredValues.totalSeniorCount.description
        
        //TotalPersonCount.text = StoredValues.totalStudentWOCount + StoredValues.totalChildCount
        
    }
  /*  func totalCount()
    {
        StoredValues.TotMones =  StoredValues.subtotal + StoredValues.TotMones
        
        StoredValues.totalChildCount = StoredValues.currentChildCount + StoredValues.totalChildCount
        
        StoredValues.totalStudentWOCount = StoredValues.currentStudentWoCount + StoredValues.totalStudentWOCount
        
        StoredValues.totalStudentWCount = StoredValues.currentStudentWCount + StoredValues.totalStudentWCount
        
        StoredValues.totalASBCount = StoredValues.currentASBCount + StoredValues.totalASBCount
        
        StoredValues.totalAdultsCount = StoredValues.currentadultsCount + StoredValues.totalAdultsCount
        
        StoredValues.totalSeniorCount = StoredValues.currentseniorwCard + StoredValues.totalSeniorCount
    }*/
    
    @IBOutlet weak var SubtotalOut: UIButton!
    @IBOutlet weak var CancelOut: UIButton!
    @IBOutlet weak var PurchaseOut: UIButton!

    
}

