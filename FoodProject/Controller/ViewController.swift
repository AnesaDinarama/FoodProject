//
//  ViewController.swift
//  FoodProject
//
//  Created by ICK on 27/10/2017.
//  Copyright © 2017 Anesa Dinarama. All rights reserved.
//

import UIKit
import AVFoundation
import UIView_Shake

class ViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var labelPasta: UILabel!
    @IBOutlet weak var labelsugjerimi: UILabel!
    
    var menu = [Ushqimi]()
    var randomUshqimi:Int!
    var audioPlayer:AVAudioPlayer!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menu = Menu().Menu
        ImageView.image = UIImage(named: menu[0].fotoja)
        labelPasta.text = menu[0].emri
        labelsugjerimi.text = menu[0].pershkrimi
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func butoniSugjero(_ sender: UIButton) {
        sugjeroUshqimin()
        
        
        
    }
    @IBAction func butoniNeRregull(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Ne rregull", message: "Ushqimi juaj \(menu[randomUshqimi].emri) gjindet ne \(menu[randomUshqimi].kuGjindet) dhe kushton \(menu[randomUshqimi].cmimi) Euro. Koha e pritjes suaj eshte afersisht \(menu[randomUshqimi].kohaEPritjes) ore", preferredStyle: UIAlertControllerStyle.alert)
        let alertAction = UIAlertAction(title: "Ne rregull", style: UIAlertActionStyle.cancel, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
        
    
    }
    func sugjeroUshqimin(){
        randomUshqimi = Int(arc4random_uniform(UInt32(menu.count)))
        
        ImageView.image = UIImage(named: menu[randomUshqimi].fotoja)
        labelPasta.text = menu[randomUshqimi].emri
        labelsugjerimi.text = menu[randomUshqimi].pershkrimi
        
        let zeri = Bundle.main.url(forResource: "baked", withExtension: ".wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: zeri!)
        audioPlayer.play()
        
    }
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            
            view.shake(10, withDelta: 5){
                self.sugjeroUshqimin()
            }
            
            
        }
    }
}


