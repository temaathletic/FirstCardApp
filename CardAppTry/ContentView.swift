//
//  ContentView.swift
//  CardApp Ttry
//
//  Created by temaathletic on 23.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Image("wallpaper").resizable().ignoresSafeArea()
            
            Text("Main")
                .font(.largeTitle)
                .fontWeight(.black)
                .position(x: 55, y: 30)
                
            
            VStack {
                
                Image("ava").resizable().aspectRatio(contentMode: .fill).frame(width: 350, height: 350).clipShape(Circle()).overlay(Circle().stroke(lineWidth: 4)).foregroundColor(.white)
                
                Text("Artem Zaystev🐰")
                    .font(.title2)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                Text("Sportsman & iOS Developer")
                
                
                
                LinkTouch(image: "livephoto.play", link: "https://www.instagram.com/temaathletic", message: "instagram")
                LinkTouch(image: "globe", link: "https://m.vk.com/temarazer", message: "Vk")
                TelTouch(tel: "89118939141", image: "airpodspro", message: "Call to me")
                MailTouch(image: "envelope.badge", message: "Write to me", mail: "greenline1337@gmail.com")

              
                
            }.foregroundColor(.black)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LinkTouch: View {
    
    let image: String
    let link: String
    let message: String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: CGFloat(25)).frame(width: 325, height: 45).foregroundColor(.white).overlay(HStack {
            
            Link(destination: URL(string: link)!) {
                Image(systemName: image)
                    .font(.title2)
                Text(message)
            }
        })
        
    }
}

struct TelTouch: View {
    
    let tel: String
    let image: String
    let message: String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: CGFloat(25)).frame(width: 325, height: 45).foregroundColor(.white).overlay(HStack {
        
            Image(systemName: image).font(.title2)
            Link("\(message)", destination: URL(string: "tel:\(tel)")!)
            
        })
        
    }
}

struct MailTouch: View {
    
    let image: String
    let message: String
    let mail: String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: CGFloat(25)).frame(width: 325, height: 45).foregroundColor(.white).overlay(HStack {
        
            Image(systemName: image).font(.title2)
            Link("\(message)", destination: URL(string: "mailto:\(mail)")!)
            
        })
        
    }
}

//Image(systemName: image)
//Text(message).fontWeight(.regular).foregroundColor(.black)
