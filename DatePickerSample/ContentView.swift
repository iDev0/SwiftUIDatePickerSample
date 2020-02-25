//
//  ContentView.swift
//  DatePickerSample
//
//  Created by MakeItSimple on 2020/02/25.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State var selectedDate = Date()
    
    
    var body: some View {
        VStack {
            Text("원하는 날짜를 선택해주렴").font(.largeTitle)
            
            DatePicker(selection: $selectedDate, displayedComponents: .date) {
                Text("")
            }.padding(30)
            
            Text("\(selectedDate, formatter: dateFormatter)")
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
