//
//  ContentView.swift
//  SwiftUI Tutorial: Working with Menu
//
//  Created by Alvin Sosangyo on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    
    let numberList = [1, 2, 3]
    @State var currentlySelected: Int = 1

    var body: some View {
        
        Menu {
            Picker("", selection: $currentlySelected) {
                ForEach(numberList, id: \.self) {
                    Text("Select \($0)")
                }
            }
        } label: {
            HStack {
                Spacer()
                Text("Selected:")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text("\(currentlySelected)")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.green)
        }
        
    }

} // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
