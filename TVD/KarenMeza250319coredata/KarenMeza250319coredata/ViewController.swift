//
//  ViewController.swift
//  KarenMeza250319coredata
//
//  Created by Universidad Politecnica de Gómez Palacio on 25/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func registerUser(_ sender: Any)
    {
        let dictionary: [String: String] = ["email": "kinkykaren47@hotmail.com", "password": "passwprd", "username": "kinky"]
        DBLocal.save(for: "User", attributes: dictionary)
    }
    @IBAction func retrieveusers(_ sender: Any)
    {
        print(DBLocal.retrieve(for: "User"))
    }
    @IBAction func updateUser(_ sender: Any)
    {
        let dictionary: [String: String] = ["email": "kinkykaren47@hotmail.com", "password": "password", "username": "kinky"]
        let predicate: NSPredicate = NSPredicate (format: "username = %@","kinky")
        DBLocal.save(for: "User", attributes: dictionary, where: predicate)
        
    }
    @IBAction func deleteUser(_ sender: Any)
    {
        let predicate: NSPredicate = NSPredicate(format: "username = %@","kinky")
        DBLocal.delete(for: "User", where: predicate)
        
    }
    
}

