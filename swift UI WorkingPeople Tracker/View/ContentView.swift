//
//  ContentView.swift
//  swift UI WorkingPeople Tracker
//
//  Created by Arthur Sh on 28.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: Model
    
    
    var body: some View {
        
        TabView{
            VStack{
                Text("People")
                    .font(.largeTitle)
                    .bold()
                
                List(model.people) { p in
                    PersonView(person: p)
                }
                
            }
            .tabItem {Image(systemName: "person.2")}
            
            VStack {
                Text("Display Preferences")
                    .font(.title)
                    .bold()
                
                Toggle("Show name:", isOn: $model.showName)
                
                Toggle("Show address:", isOn: $model.showAddress)
                
                Toggle("Show company:", isOn: $model.showCompany)
                
                Toggle("Show years of experience:", isOn: $model.showYears)
                
                Spacer()
            }.padding(44)
                .tabItem {Image(systemName: "gear")}
                .padding()
            
        }
        
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
        
        
    }
}
