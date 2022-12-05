//
//  SonucViewController.swift
//  SayıTahminEt
//
//  Created by İrem Akgoz on 5.12.2022.
//

import UIKit

class SonucViewController: UIViewController {

   
    
    
    @IBOutlet weak var imageViewSonuc: UIImageView!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var sonuc:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "sonuç ekranı"
        
        print(sonuc!)
        
        if sonuc! == true{
            labelSonuc.text = "kazandınız"
            imageViewSonuc.image = UIImage(named: "mutlu")
            
        }else{
            labelSonuc.text = "kaybettiniz"
            imageViewSonuc.image = UIImage(named: "mutsuz")
        }

    }
    

    @IBAction func tekrarOyna(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        
    }
    

}
