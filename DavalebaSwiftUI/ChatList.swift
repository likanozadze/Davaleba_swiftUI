//
//  ChatList.swift
//  DavalebaSwiftUI
//
//  Created by Lika Nozadze on 12/6/23.
//


import SwiftUI

struct Person {
    
    
    var imageName = String()
    var name = String()
    var message = String()
    var date = String()
}
struct ChatList: View {
    let originalPersons = [
        Person(imageName: "avatarr", name: "Francisco Miles", message: "I went there yesterday", date: "18:14"),
        Person(imageName: "avatar1", name: "Arlene Fisher", message: "IDK what else is there to do", date: "22:31"),
        Person(imageName: "avatar2", name: "Darlene Hawkins", message: "No, I can't come tomorrow.", date: "09:18"),
        Person(imageName: "avatar3", name: "Eduardo Mckinney", message: "Go to hell", date: "Yesterday"),
        Person(imageName: "avatar4", name: "Aubrey Cooper", message: "I hope it goes well.", date: "Friday"),
        Person(imageName: "avatar5", name: "Jorge Nguyen", message: "So, what's your plan this weekend?", date: "Thursday"),
        Person(imageName: "avatar6", name: "Cody Cooper", message: "What's the progress on that task?", date: "Tuesday"),
        Person(imageName: "avatar7", name: "Kristin Pena", message: "Yeah! You're right.", date: "7/22/20"),
        Person(imageName: "avatar8", name: "Brandie Watson", message: "I went there yesterday", date: "8/19/20"),
        Person(imageName: "avatar9", name: "Stella Henry", message: "Martinique", date: "9/15/20"),
    ]
    
    @State var persons: [Person]
    @State var isChatCleared = false
    @State var showAlert: Bool = false
    
    
    init() {
        _persons = State(initialValue: originalPersons)
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                List(persons, id: \.name) { person in
                    HStack {
                        Image(person.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text(person.name)
                                .font(.system(size: 17))
                            Text(person.message)
                                .font(.system(size: 12))
                        }
                        Spacer()
                        Text(person.date)
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)
                        
                    }
                    .navigationBarTitle(Text("Chat"), displayMode: .inline)
                    
                }
                .accentColor(.white)
                
                if !isChatCleared {
                    Button(action: {
                        self.persons.removeAll()
                        self.isChatCleared = true
                        showAlert.toggle()
                        
                        
                    }) {
                        Text("Clear Chat")
                            .padding()
                            .frame(width: 221, height: 45)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    
                }
                if isChatCleared {
                    Button(action: {
                        self.persons = self.originalPersons
                        self.isChatCleared = false
                    }) {
                        Text("Reset Chat")
                            .padding()
                            .frame(width: 221, height: 45)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    .alert(isPresented: $showAlert, content: {
                        Alert(title: Text("Chat was cleared"))
                    })
                }
                
            }
        }
        .colorScheme(.dark)
        
    }
    
}
#Preview {
    ChatList()
}
