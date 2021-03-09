//
//  ViewController.swift
//  ChatApp
//
//  Created by minato on 2021/03/09.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate,UITableViewDataSource {
    
    var array = ["a","b","c"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath);        cell.textLabel!.text = array[indexPath.row]
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
          
        
        
    }

    
   

    
    

}

