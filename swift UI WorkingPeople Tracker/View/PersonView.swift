//
//  personsViewmodel.swift
//  swift UI WorkingPeople Tracker
//
//  Created by Arthur Sh on 28.08.2022.
//

import SwiftUI

struct PersonView: View {
    
    var person:Person
    @EnvironmentObject var model:Model
    
    var body: some View {
        VStack{
            if model.shownName{
                Text("name: \(person.name)")
            }
            if model.showAddress{
                Text("Address: \(person.address)")
            }
            if model.showAddress{
                Text("Company: \(person.company)")
            }
            if model.showYearsOfExp{
                Text("Years of Expirience: \(person.yearsOfExperience)")
            }
        }
    }
}

struct personsViewmodel_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person(name: "Chika",
                                  address: "ave 12 1/7",
                                  company: "Chupik eco",
                                  yearsOfExperience: 12)
        ).environmentObject(Model())
    }
}
