//
//  ViewController.swift
//  EduardoCuevas210319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 21/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class UserVC: UIViewController
{

    var users: [User] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        setUserDefault()
    }
    // MARK: - Table view data source
    
    func setUserDefault()
    {
        self.users.append(User(firstName: "Eduardo", lastName: " Cuevas"))
        self.users.append(User(firstName: "Victor", lastName: " Bautista"))
        self.users.append(User(firstName: "Luis", lastName: " Delgado"))
        self.users.append(User(firstName: "Jose Luis", lastName: " Meza"))
    }
}
extension UserVC: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return self.users.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTVCell", for: indexPath) as! UserTVCell
        
        let user: User = self.users[indexPath.row]
        cell.lblUsername.text = "\(user.firstName!)\(user.lastName!)"
        // Configure the cell...
        
        return cell
    }
}
extension UserVC: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("didSelectRowAt.indexPath.row \(indexPath.row)")
    }
}
