//
//  tahminViewController.swift
//  SayıTahminEt
//
//  Created by İrem Akgoz on 5.12.2022.
//

import UIKit

class tahminViewController: UIViewController {

    @IBOutlet weak var labelKalanHak: UILabel!
    @IBOutlet weak var labelYardım: UILabel!
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    
    var rastgeleSayı:Int?
    var kalanHak = 5
   
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rastgeleSayı = Int(arc4random_uniform(100))
        print(rastgeleSayı!) //deneme
        

     
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenveri = sender as? Bool {
            let gidilecekVC = segue.destination as! SonucViewController
            gidilecekVC.sonuc  =  gelenveri
        }
    }
    

   
    @IBAction func tahminEt(_ sender: Any) {
        labelYardım.isHidden = false
        kalanHak -= 1
        
        if let veri = textFieldGirdi.text{
            if let tahmin = Int(veri){
                if kalanHak != 0 {
                    if tahmin == rastgeleSayı! {
                        let sonuc = true
                        performSegue(withIdentifier: "tahmintosonuc", sender: sonuc)
                    }
                    if tahmin > rastgeleSayı!{
                        labelYardım.text = "Azalt"
                        labelKalanHak.text = "kalan hak: \(kalanHak)"
                        
                    }
                    if tahmin < rastgeleSayı!{
                        labelYardım.text = "Arttır"
                        labelKalanHak.text = "kalan hak: \(kalanHak)"
                        
                    }
                    
                }else{
                    let sonuc = false
                    performSegue(withIdentifier: "tahmintosonuc", sender: sonuc)
                    
                }
                textFieldGirdi.text = ""
            }
        }
    }
    
}
