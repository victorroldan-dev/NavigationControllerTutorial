//
//  VC4.swift
//  NavigationControllerTutorial
//
//  Created by Victor Roldan on 2/09/21.
//

import UIKit

class VC4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.viewControllers.forEach({ vc in
            print(vc.self)
        })
        
    }
    

    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goVC2(_ sender: Any) {
        let vc2 = navigationController?.viewControllers.filter({$0.isKind(of: VC2.self)}).first
        
        navigationController?.popToViewController(vc2!, animated: true)
        
    }
}
