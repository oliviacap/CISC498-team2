//
//  SwiftUIView.swift
//  maize master
//
//  Created by Olivia Caponigro on 9/30/21.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct WelcomeView: View {
    @State var email: String = ""
    
    var body: some View {
        //welcome screen
        VStack{
            WelcomeText()
            AppIcon()
            EmailField()
            Button(action: {print("Button tapped")}){
            LoginButton()
            }
            
        }
        .padding()
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Welcome to maize master!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            .multilineTextAlignment(.center)
    }
}

struct AppIcon: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.green)
                        .frame(width: 200, height: 200)
                        .overlay(Image("maize").offset(y:15))
                        .shadow(radius: 7)
    }
}

struct EmailField: View{
    @State var email: String = ""
    var body: some View{
        TextField("email",text: $email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct LoginButton: View{
    var body: some View{
    Text("LOGIN")
    .font(.headline)
    .foregroundColor(.white)
    .padding()
    .frame(width: 220, height: 60)
    .background(Color.green)
    .cornerRadius(15.0)
}
}
