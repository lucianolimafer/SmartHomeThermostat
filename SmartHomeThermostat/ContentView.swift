//
//  ContentView.swift
//  SmartHomeThermostat
//
//  Created by Luciano Lima Ferreira on 28/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 0) {
                        //MARK: Thermometer
                        ThermometerView()
                            .padding(.top, 30)
                            .padding(.bottom, 60)
                        
                        //MARK: Smartsystem
                        HStack(spacing: 20) {
                            //MARK: Humidity
                            ClimateCard(iconName: "humidity.fill", index: "Umidade", measure: "26%")
                            //MARK: Temperature
                            ClimateCard(iconName: "thermometer", index: "Temperatura", measure: "16")
                        }
                    }
                }
            }
            .navigationTitle("Termostato")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
