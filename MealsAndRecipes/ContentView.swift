//
//  ContentView.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 5/21/23.
//

import SwiftUI

struct ContentView: View {
    
    //    @State private var isNight = false
    @State private var selectedMeal: MealsOfTheDay = .all
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    HeaderView().padding(30).offset(y:-120)
                    MealButtons()
                        .background()
                    Text("Tap an option").padding(.top, 20).font(.system(size: 20))
                    }
                    Spacer()
//                    Button(action: getJson, label: {Text("json")})
            }
            }.padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct BackgroundView: View {
        var middleColor: Color
        
        var body: some View {
            LinearGradient(colors: [.red, middleColor, .green],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    struct HeaderView: View {
        var body: some View {
            VStack {
                Image(systemName: "fork.knife.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
                    .frame(width: 40, height: 40)
                Text("What's to eat?")
                    .foregroundColor(. red)
                    .font(.system(size: 45, weight: .bold, design: .default))
            }
        }
    }
//}
