//
//  ListViewController.swift
//  AuthApp
//
//  Created by macbro on 20/04/22.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    var listItem:Array<User> = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    // MARK:- Methud
    func initViews(){
        title = "Table View"
        tableView.dataSource = self
        tableView.delegate = self
        addNavigationBar()
        listItem.append(User(name: "Dostonbek Eshmurodov",
                    info: "U hozir 21 yoshda. U Android va IOS Datsturchi",
        content: "Dostonbek 2001-yilda tug'ilgan", profilImage: "my_image", image: "my_image"))
        listItem.append(User(name: "Dostonbek Eshmurodov",
                    info: "U hozir 21 yoshda. U Android va IOS Datsturchi",
        content: "Dostonbek 2001-yilda tug'ilgan", profilImage: "my_image", image: "my_image"))
        listItem.append(User(name: "Dostonbek Eshmurodov",
                    info: "U hozir 21 yoshda. U Android va IOS Datsturchi",
        content: "Dostonbek 2001-yilda tug'ilgan", profilImage: "my_image", image: "my_image"))
        listItem.append(User(name: "Dostonbek Eshmurodov",
                    info: "U hozir 21 yoshda. U Android va IOS Datsturchi",
        content: "Dostonbek 2001-yilda tug'ilgan", profilImage: "my_image", image: "my_image"))
        listItem.append(User(name: "Dostonbek Eshmurodov",
                    info: "U hozir 21 yoshda. U Android va IOS Datsturchi",
        content: "Dostonbek 2001-yilda tug'ilgan", profilImage: "my_image", image: "my_image"))
        listItem.append(User(name: "Dostonbek Eshmurodov",
                    info: "U hozir 21 yoshda. U Android va IOS Datsturchi",
        content: "Dostonbek 2001-yilda tug'ilgan", profilImage: "my_image", image: "my_image"))
        
    }
    
    func addNavigationBar(){
       let navigationBar = self.navigationController?.navigationBar
       // navigationBar?.barStyle = UIBarStyle.black
        navigationBar?.tintColor = UIColor.black
    }
    
    // MARK:-TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = listItem[indexPath.row]
        let itemTableViewCell = Bundle.main.loadNibNamed("ItemTableViewCell", owner: nil)?.first as! ItemTableViewCell
        itemTableViewCell.userName.text = item.name
        itemTableViewCell.userContent.text = item.content
        itemTableViewCell.imageProfil.image = UIImage(named: item.profilImage!)
        itemTableViewCell.userInfo.text = item.info
        itemTableViewCell.imageInfo.image = UIImage(named: item.image!)
        
        itemTableViewCell.imageProfil.layer.cornerRadius = 35
        return itemTableViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
