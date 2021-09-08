//
//  VC1.swift
//  NavigationControllerTutorial
//
//  Created by Victor Roldan on 2/09/21.
//

import UIKit

class VC1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goNext1(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "VC2") as? VC2
        vc?.title = "Titulo Prueba"
        navigationController?.pushViewController(vc!, animated: true)
//        vc?.modalPresentationStyle = .fullScreen
//        navigationController?.present(vc!, animated: true)
        
    }
    
    @IBAction func goNextXib(_ sender: Any) {
        let vc = VCXIB()
        vc.parametro = "Hola"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goVC2"{
            if let vc = segue.destination as? VC2{
                vc.parametro = "prueba"
            }
        }
    }
    

}
