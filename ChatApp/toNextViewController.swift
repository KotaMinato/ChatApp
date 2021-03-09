//
//  toNextViewController.swift
//  ChatApp
//
//  Created by minato on 2021/03/09.
//

import UIKit

class toNextViewController: UIViewController,UITextViewDelegate,UITableViewDataSource,UITableViewDelegate {

    var array = ["自己紹介","年齢","地域","スタイル","身長","趣味"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return array.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell2: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath);

        cell2.textLabel!.text = array[indexPath.row]

        tableView.isScrollEnabled = true



             return cell2

    }
        override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
      

}
