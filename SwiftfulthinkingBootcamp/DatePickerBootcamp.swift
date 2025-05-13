//
//  DatePickerBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 13/05/2025.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endingDate: Date = Date()
    
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    var body: some View {
        
        VStack{
            // DatePicker("Select a Date", selection: $selectedDate)
     //        DatePicker("Select a Date",
     //                   selection: $selectedDate, displayedComponents: .hourAndMinute)
             Text("Selected date is: ")
            Text(dateFormatter.string(from:selectedDate))
                .font(.title)
             DatePicker("Select a date",
                        selection: $selectedDate,
                        in: startingDate...endingDate, displayedComponents: [.date])
                 .accentColor(Color.red)
                // .datePickerStyle(GraphicalDatePickerStyle())
                // .datePickerStyle(WheelDatePickerStyle())
                 .datePickerStyle(CompactDatePickerStyle())
        }
    
    }
}

#Preview {
    DatePickerBootcamp()
}
