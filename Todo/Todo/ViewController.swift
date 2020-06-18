//
//  ViewController.swift
//  Todo
//
//  Created by Keita Suzuki on 2020/06/18.
//  Copyright © 2020 Keita Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TodoElement.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let toDocell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "toDocell", for: indexPath)
        toDocell.textLabel!.text = TodoElement[indexPath.row]
        return toDocell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            TodoElement = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
        // Do any additional setup after loading the view.
        func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
        }
    }


}

