//
//  ContentView.swift
//  CikoProfile
//
//  Created by Ciko Edo Febrian on 03/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color
                .yellow
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("photo").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 160, height: 160).clipShape(RoundedRectangle(cornerRadius: 35))
                    .overlay(RoundedRectangle(cornerRadius: 35)
                        .stroke(.black, lineWidth: 4)
                )
                Text("Ciko Edo Febrian")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(Font.custom("Quicksand-Regular", size: 35)).padding(.top, 40)
                Text("Mobile Developer")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(Font.custom("Quicksand-Regular", size: 20))
                BioItem(content: "Indonesia", icon: "location.fill")
                BioItem(content: "+6285 155 369 699", icon: "phone.fill")
                BioItem(content: "ciko.edo.febrians@gmail.com", icon: "envelope.fill")

            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BioItem: View {
    let content: String
    let icon: String
    var body: some View {
        RoundedRectangle(cornerRadius: 35).frame(height: 50)
            .overlay(HStack {
                Image(systemName:icon).foregroundColor(.white)
                Text(content)
                    .foregroundColor(Color.white)
                    .font(Font
                        .custom("Quicksand-Regular", size: 18))
            })
            .padding(.top, 5)
            .padding(.trailing, 10)
            .padding(.leading, 10)
     
    }
}
