//
//  ViewController.swift
//  ChatApp
//
//  Created by minato on 2021/03/09.
//

import UIKit



class ViewController: UIViewController,UITextViewDelegate,UITableViewDataSource,UITableViewDelegate {
    
    
    
    var Datas: [Data] = []

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        
    }
    
    func loadData() {
       Datas.append(Data(name: "おさけ", age:"20歳", city: "北海道"))
       Datas.append(Data(name: "ぽん", age:"18歳", city: "東京"))
       Datas.append(Data(name: "なおざね", age:"20歳", city: "北海道"))
       Datas.append(Data(name: "ぴいた", age:"20歳", city: "青森"))
       Datas.append(Data(name: "ひろ", age:"18歳", city: "東京"))
       Datas.append(Data(name: "シーサイド", age:"23歳", city: "沖縄"))
       Datas.append(Data(name: "ざねめん", age:"20歳", city: "青森"))
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//           let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath);
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell else {
                    fatalError("Dequeue failed: UserTableViewCell")
                }
             
              //セルの中にアイコンを表示
              cell.imageView!.image = UIImage(named: "iconfinder_user_male4_172628")
              cell.userNameLabel.text = Datas[indexPath.row].name
              cell.userAgeLabel.text = Datas[indexPath.row].age
              cell.userCityLabel.text = Datas[indexPath.row].city
              
       
        return cell
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


