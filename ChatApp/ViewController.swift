//
//  ViewController.swift
//  ChatApp
//
//  Created by minato on 2021/03/09.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate,UITableViewDataSource,UITableViewDelegate {
    
    
    
    
    
    var array = ["a","b","c","d","e","f","g","h"]//トークの数
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath);
        
              //セルの中にアイコンを表示
              cell.imageView!.image = UIImage(named: "iconfinder_user_male4_172628")
               
              cell.textLabel!.text = array[indexPath.row]
       
        
        
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
          
        
        
    }

    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/10
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        tableView.deselectRow(at: indexPath, animated: true)
        
//      
            }
      




}


