//
//  ViewController.swift
//  ChatApp
//
//  Created by minato on 2021/03/09.
//

import UIKit



class ViewController: UIViewController,UITextViewDelegate,UITableViewDataSource,UITableViewDelegate {
    
    
    
    var array = ["a","b","c","d","e","f","g","h","i","j"]//トークの数
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath);
        
              //セルの中にアイコンを表示
              cell.imageView!.image = UIImage(named: "iconfinder_user_male4_172628")
               
              cell.textLabel!.text = array[indexPath.row]
               tableView.isScrollEnabled = true
       
        
        
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.barStyle = .black
        self.navigationController!.navigationBar.barTintColor = .white
                self.navigationController!.navigationBar.tintColor = .black
                self.navigationController!.navigationBar.titleTextAttributes = [
                    .foregroundColor: UIColor.white
        ]
        
       
    }

    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/10
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        tableView.deselectRow(at: indexPath, animated: true)
        print("\(indexPath.row)番目の行が選択されました。")
    }
      




}


