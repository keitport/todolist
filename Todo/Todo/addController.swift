//
//  addController.swift
//  Todo
//
//  Created by Keita Suzuki on 2020/06/18.
//  Copyright © 2020 Keita Suzuki. All rights reserved.
//

import UIKit

var TodoElement = [String]()

class addController: UIViewController {

    @IBOutlet weak var todoTextField: UITextField!
    
    @IBOutlet weak var todoAddButton: UIButton!
    
    @IBAction func todoAddButton(_ sender: Any) {
        TodoElement.append((todoTextField.text)!)
        todoTextField.text = ""
        UserDefaults.standard.set( TodoElement, forKey: "TodoList" )
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
