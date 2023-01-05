//
//  Person.swift
//  ContactListSui
//
//  Created by hiirari on 02.01.2023.
//

import Foundation

struct Person: Hashable, Identifiable {
    var id: Int
    
    let name: String
    let surename: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surename)"
    }
    
  static  func getPersons() -> [Person]{
         var persons = [Person]()
      
      let names = DataManager.shared.names.shuffled()
  let surenames = DataManager.shared.surenames.shuffled()
  let phones = DataManager.shared.phones.shuffled()
  let emails = DataManager.shared.emails.shuffled()

    for index in 0...names.count - 1 {
             let person = Person(
                 id: index + 1,
                 name: names[index],
                 surename: surenames[index],
                 phone: phones[index],
                 email: emails[index]
             )
             
            persons.append(person)
         }
        print(persons)
        return persons
     }
}
