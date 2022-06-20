//
//  ContentView.swift
//  TKSmartCardTest
//
//  Created by Jens Utbult on 2022-06-19.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = SmartCardModel()
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text(model.status ?? "")
                Spacer()
                Button("Scan smart card") {
                    model.connect()
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
