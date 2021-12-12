//
//  ViewController.swift
//  UnitTestExample
//
//  Created by Egemen on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstUserName: UITextField!
    @IBOutlet weak var firstUserAge: UITextField!
    
    @IBOutlet weak var secondUserName: UITextField!
    @IBOutlet weak var secondUserAge: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func compareButtonPressed(_ sender: Any) {
        let firstUser = User(name: firstUserName.text!, age: Int(firstUserAge.text!)!)
        let secondUser = User(name: secondUserName.text!, age: Int(secondUserAge.text!)!)
        let resultString = compareUser(firstUser: firstUser, secondUser: secondUser)
        result.text = resultString
    }
    func compareUser(firstUser: User, secondUser: User) -> String {
        let compareResult : String!
        if firstUser.age! > secondUser.age!{
            compareResult = secondUser.name
        }else if firstUser.age! < secondUser.age!{
            compareResult = firstUser.name
        }else{
            compareResult = firstUser.name! + ", " + secondUser.name!
        }
        return compareResult
    }

}

