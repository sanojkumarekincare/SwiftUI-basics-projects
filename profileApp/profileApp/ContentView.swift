//
//  ContentView.swift
//  profileApp
//
//  Created by Sanoj on 07/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                VStack(spacing: 20){
                    Spacer()
                    Image("myImage")
                        .resizable()
                        .frame(width: 180, height: 180, alignment: .center)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 8, x: 5, y: 8)
                    Text("Your name")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("iOS | Front End Developer")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    HStack(alignment: .center, spacing: 20){
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 8, y: 8)
                }
                Spacer()
                VStack(alignment: .center, spacing: 30){
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .foregroundColor(.white)
                        .overlay(
                            Text("Follow")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                        )
                }
                Spacer()
                VStack(spacing: 50){
                    HStack{
                        VStack{
                            Text("1775")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                            Text("Appreciations")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                        }
                        VStack{
                            Text("1775")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                            Text("Fllowers")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                        }
                        VStack{
                            Text("17750")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                            Text("Networks")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                        }
                    }
                    Text("About You")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                Text("I'm a iOS Frontend Developer. Welcome to the series of iOS-15 projects. Let's dive deeper and create some more exciting projects.")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
