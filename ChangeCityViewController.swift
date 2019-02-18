//  Waleed Khan

import UIKit


//Write the protocol declaration here:
protocol ChangeCityDelegate{
    func userEnteredANewCityName(city: String)
}

class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!

    @IBAction func getWeatherPressed(_ sender: AnyObject) {

         let cityName = changeCityTextField.text!
        
        //if there is a delegate, call the method and pass the cityName
        delegate?.userEnteredANewCityName(city: cityName)
        
        //go back to the WeatherViewController
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        //dismiss ChangeCityViewController
        self.dismiss(animated: true, completion: nil)
    }
    
}
