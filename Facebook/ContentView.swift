//
//  ContentView.swift
//  Facebook
//
//  Created by Akın Aksoy on 27.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var searchText : String
    let facebokBlue = UIColor(red: 23/255, green: 120/255, blue: 242/255, alpha: 1)
    
    
    var body: some View {
        VStack {
            HStack {
                Text("facebook")
                    .font(.system(size: 48,weight: .bold,design: .default))
                    .foregroundColor(Color(facebokBlue))
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 40,height: 40,alignment: .center)
                    .foregroundColor(Color.secondary)
            }
            .padding()
            
            TextField("Search....",text: $searchText)
                .padding(7)
                .background(Color(.systemGray5))
                .padding(.horizontal,15)
                .cornerRadius(16)
            
            ZStack {
                Color(.secondarySystemBackground)
                ScrollView(.vertical) {
                    VStack {
                        ScrollView(.horizontal,showsIndicators: false) {
                            HStack(spacing:3) {
                                Image("steve-jobs")
                                    .resizable()
                                    .frame(width: 140,height: 200,alignment: .center)
                                    .background(Color.red)
                                Image("jeff-bezos")
                                    .resizable()
                                    .frame(width: 140,height: 200,alignment: .center)
                                    .background(Color.red)
                                Image("akın-aksoy")
                                    .resizable()
                                    .frame(width: 140,height: 200,alignment: .center)
                                    .background(Color.red)
                                Image("tim-cook")
                                    .resizable()
                                    .frame(width: 140,height: 200,alignment: .center)
                                    .background(Color.red)
                            }
                        }.padding()
                    }
                    FBPost(name: "Jeff Bezos", post: "Hello Guys !! I am founder of Amazon. If you want to join me, Please comment.", photo: "jeff-bezos", minute: "12 Minute Ago")
                        .padding()
                    FBPost(name: "Elon Musk", post: "Everyone must buy DogeCoin. It is really cool.", photo: "Elon-Musk", minute: "18 Minute Ago")
                        .padding()
                    FBPost(name: "Steve Jobs", post: "Hey guys, I invented a phone. It is pretty cool.", photo: "steve-jobs", minute: "24 Minute Ago")
                        .padding()
                    FBPost(name: "Akın Aksoy", post: "Hey Guys I am still looking a job. Please offer a job to me !!", photo: "akın-aksoy", minute: "30 Minute Ago")
                        .padding()
                }
            }
            
            Spacer()
        }
    }
}

struct FBPost: View {
    @State var isLiked : Bool = false
    
    let name: String
    let post: String
    let photo: String
    let minute: String
    var body: some View {
        VStack {
            HStack {
                Image(photo)
                    .resizable()
                    .frame(width: 48,height: 48,alignment: .center)
                    .clipShape(Circle())
                VStack{
                    Text(name)
                        .font(.system(size: 16,weight: .bold,design: .default))
                        .foregroundColor(.blue)
                    Text(minute)
                        .font(.system(size: 16,weight: .semibold,design: .default))
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            Spacer()
            HStack {
                Text(post)
                    .font(.system(size: 24,weight: .regular,design: .default))
                Spacer()
            }
            Spacer()
            HStack {
                Button {
                    isLiked.toggle()
                } label: {
                    Text(isLiked ? "Liked" : "Like")
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("Comment")
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("Share")
                }

            }.padding(16)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchText: .constant(""))
    }
}
