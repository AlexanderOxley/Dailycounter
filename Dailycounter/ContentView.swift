//
//  ContentView.swift
//  Dailycounter
//
//  Created by Alexander Oxley on 17.09.19.
//  Copyright © 2019 Alexander Oxley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                CounterView(number: 0, name: "Counter 1")
                CounterView(number: 0, name: "Counter 2")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        .previewDevice("iPhone 7")
    }
}
