//
//  VC2.swift
//  NavigationControllerTutorial
//
//  Created by Victor Roldan on 2/09/21.
//

import UIKit

class VC2: UIViewController {
    var parametro : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("parametro: ", parametro)
        let rightButton = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: #selector(bellPressed))
        navigationItem.rightBarButtonItem = rightButton
    }
    
    @objc func bellPressed(){
        print("presionó el botón")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
