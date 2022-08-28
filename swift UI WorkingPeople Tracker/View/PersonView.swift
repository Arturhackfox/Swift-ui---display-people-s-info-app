//
//  personsViewmodel.swift
//  swift UI WorkingPeople Tracker
//
//  Created by Arthur Sh on 28.08.2022.
//

import SwiftUI

struct PersonView: View {
    
    @EnvironmentObject var model: Model
    var person: Person

    
    var body: some View {
        VStack{
            if model.showName{
                Text("name: \(person.name)")
            }
            if model.showAddress{
                Text("Address: \(person.address)")
            }
            if model.showAddress{
                Text("Company: \(person.company)")
            }
            if model.showYears{
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
