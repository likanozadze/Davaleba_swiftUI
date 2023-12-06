//
//  ContentView.swift
//  DavalebaSwiftUI
//
//  Created by Lika Nozadze on 12/6/23.
//


import SwiftUI

struct Profile: View {
    
    
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var dateOfBirth: String = ""
    @State var country: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                VStack {
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 170.297, height: 170.297)
                        .clipShape(Circle())
                        .overlay(
                            Image(systemName: "camera.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.black)
                                .padding(),
                            alignment: .bottomTrailing
                        )
                    
                    Spacer()
                    
                    VStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .font(.headline)
                                .foregroundColor(Color.black)
                            
                            TextField("test", text: $name)
                                .frame(width: 342, height: 44)
                                .padding(1)
                                .background(Color.white)
                                .border(Color.gray.opacity(0.14), width: 1)
                                .cornerRadius(6)
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("Email")
                                .font(.headline)
                                .foregroundColor(Color.black)
                            
                            TextField("test@gmail.com", text: $email)
                                .frame(width: 342, height: 44)
                                .padding(1)
                                .background(Color.white)
                                .border(Color.gray.opacity(0.14), width: 1)
                                .cornerRadius(6)
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("Password")
                                .font(.headline)
                                .foregroundColor(Color.black)
                            
                            TextField("************", text: $password)
                                .frame(width: 342, height: 44)
                                .padding(1)
                                .background(Color.white)
                                .border(Color.gray.opacity(0.14), width: 1)
                                .cornerRadius(6)
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("Date of Birth")
                                .font(.headline)
                                .foregroundColor(Color.black)
                            TextField("31/02/2000", text: $dateOfBirth)
                                .frame(width: 342, height: 44)
                                .padding(1)
                                .background(Color.white)
                                .border(Color.gray.opacity(0.14), width: 1)
                                .cornerRadius(6)
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("Country/Region")
                                .font(.headline)
                                .foregroundColor(Color.black)
                            TextField("Georgia", text: $country)
                                .frame(width: 342, height: 44)
                                .padding(1)
                                .background(Color.white)
                                .border(Color.gray.opacity(0.14), width: 1)
                                .cornerRadius(6)
                            
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        HStack {
                            Spacer()
                            Button(action: {
                            }) {
                                Text("Save".uppercased())
                                    .padding()
                                    .frame(width: 221, height: 45)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                
                            }
                            
                            Spacer()
                        }
                    }
                    .padding()
                    .navigationTitle("Edit profile")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(
                        leading:
                            HStack {
                                Image(systemName: "chevron.left")
                            }
                    )
                }
            }
        }
    }
}

#Preview {
    Profile()
}


