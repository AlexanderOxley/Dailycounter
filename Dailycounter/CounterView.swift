//
//  CounterView.swift
//  Dailycounter
//
//  Created by Alexander Oxley on 17.09.19.
//  Copyright © 2019 Alexander Oxley. All rights reserved.
//

import SwiftUI

struct CounterView: View {
    
    @State var number: Int
    @State var name: String
    var body: some View {
        // Embed in Navigationview is a workaround for darkmode
        VStack {
            HStack {
                Text(name)
                    .font(.largeTitle)
                Button(action: {
                    // TODO rename
                }) {
                    Image(systemName: "pencil")
                        .imageScale(.large)
                }
                .padding(.leading, 10)
            }
            HStack {
                VStack {
                    Button(action: {self.number = self.number + 1}) {
                        Image(systemName: "hand.thumbsup.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .padding(.bottom, 10)
                    Button(action: {self.number = 0}) {
                        Image(systemName: "hand.thumbsdown.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .padding(.top, 10)
                }
                .padding(.leading, 10)
                Spacer()
                Text(number.description)
                    .font(.largeTitle)
                    .padding(.trailing, 10)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200, maxHeight: .infinity, alignment: Alignment.topLeading)
        .padding(.all, 3)
    }
}
struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CounterView(number: 10, name: "hello")
            CounterView(number: 10, name: "hello")
        }
        //        .previewLayout(.fixed(width: 300, height: 350))
    }
}
