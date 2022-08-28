//
//  ContentView.swift
//  swift UI WorkingPeople Tracker
//
//  Created by Arthur Sh on 28.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:Model
    
    var body: some View {
        NavigationView{
            TabView{
                VStack{
                    Text("People")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    List(Model.people){ p in
                        PersonView(person: p)
                     
                    }
                   
                }
                .tabItem {
                        VStack{
                            Image(systemName: "person.2")
                            Text("Tab 1")
                        }
                    }
            
                VStack(alignment: .center){
                    
                Toggle("Show Name", isOn: $model.shownName)
                Toggle("Show address", isOn: $model.showAddress)
                Toggle("Show company", isOn: $model.showCompany)
                Toggle("Show years of expirience", isOn: $model.showYearsOfExp)
                    Spacer()
                }.navigationTitle("Display preferences")
                .padding(52)
                .tabItem {
                    VStack{
                        Image(systemName: "gear")
                        Text("Tab 2")
                    }
                }
            
            }
                
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
