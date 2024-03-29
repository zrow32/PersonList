//
//  DetailTableTableViewController.swift
//  PersonsList
//
//  Created by Vladimir Zhirov on 11/29/19.
//  Copyright © 2019 Vladimir Zhirov. All rights reserved.
//

import UIKit
import Foundation

class MainViewController: UITableViewController {
    
    var persons: [Person] = []
    
    var names = ["Alan",
                 "Alex",
                 "Bob",
                 "Robert",
                 "Bobby",
                 "Shean",
                 "Dan",
                 "Dennis",
                 "Simon",
                 "Frank"].shuffled()
        
    var surnames = [" Dart",
                    " Overdor",
                    " School",
                    " Robinson",
                    " Kempinski",
                    " West",
                    " Bootman",
                    " Gevorkyan",
                    " Foreman",
                    " Gooding"].shuffled()
        
    var emails = ["asd@yahoo.com",
                  "12boo@abc.com",
                  "darling@gmail.com",
                  "weare2@am.online",
                  "dots12@asd.net",
                  "forto@reg.com",
                  "cooking33@twist.com",
                  "12_34@gmail.com",
                  "hum1965@yahoo.com",
                  "turbo99@vic.net"].shuffled()
        
    var phoneNumbers = ["1238783434",
                        "9048758765",
                        "9083456234",
                        "9883412345",
                        "9179998846",
                        "9071264536",
                        "9072386500",
                        "9872388399",
                        "9998578746",
                        "9309839998374"].shuffled()

    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...9 {
            
            let person = Person(name: names[i],
                                surname: surnames[i],
                                email: emails[i],
                                phoneNumber: phoneNumbers[i])
            persons.append(person)
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return persons.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = persons[indexPath.row].name + persons[indexPath.row].surname
     
        return cell
    }

  
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if let indexPath = tableView.indexPathForSelectedRow {
             let detailVC = segue.destination as! DetailsViewController
            detailVC.name = persons[indexPath.row].name + persons[indexPath.row].surname
            detailVC.email = persons[indexPath.row].email
            detailVC.phone = persons[indexPath.row].phoneNumber
        }
    }
}
