//
//  ContentView.swift
//  CodingWithChris_Tutorial
//
//  Created by Dzjem Gard on 2022-11-06.
//

import SwiftUI

struct ContentView: View {
    
    // Vars
    @State private var playerCard  = "card2"
    @State private var cpuCard     = "card9"
    @State private var playerScore = 0
    @State private var cpuScore    = 0
    
    var body: some View {
        
        
        ZStack {
            Image("background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo-1")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    // Generate a random number between 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    
                    // Update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if (playerRand > cpuRand){
                        playerScore += 1
                    } else if (playerRand < cpuRand){
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player").foregroundColor(Color.white).font(.headline).padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .foregroundColor(Color.white).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").foregroundColor(Color.white).font(.headline).padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .foregroundColor(Color.white).font(.largeTitle)
                    }
                    Spacer()
                }
                Spacer()
                
                
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
