//
//  ContentView.swift
//  MyCardApp
//
//  Created by temaathletic on 25.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {Color(red: 0.99, green: 0.80, blue: 0.43).ignoresSafeArea()
            VStack {Image("ava").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 5))
                Text("Artem Zaytsev")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("iOS-Developer/Sportsman")
                    .font(.title3)
                    .fontWeight(.light)
                Divider()
                Card(image: "phone.fill", message: "+79118939141")
                Card(image: "envelope.fill", message: "greenline1337@gmail.com")
            }.foregroundColor(.white)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 50).overlay(HStack {
            Image(systemName: image)
                .foregroundColor(Color.black)
            Text(message)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
        })
    }
}
