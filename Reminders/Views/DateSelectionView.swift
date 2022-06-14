//
//  DateSelectionView.swift
//  Reminders
//
//  Created by adam janusewski on 6/14/22.
//

import SwiftUI

struct DateSelectionView: View {
    
    @Binding var dueDate: DueDate?
    @State private var selectedDate: Date = Date.today
    @State private var showCalendar: Bool = false
    
    var body: some View {
        Menu {
            Button {
                dueDate = .today
            } label: {
                VStack {
                    Text("Today \n \(Date.today.formatAsString)")
                }
            }
            Button {
                dueDate = .today
            } label: {
                VStack {
                    Text("Tomorrow \n \(Date.today.formatAsString)")
                }
            }
            
            Button {
                showCalendar = true
            } label : {
                Text("Custom")
            }
        } label: {
            Label(dueDate == nil ? "Add Date:" : dueDate!.value.formatAsString, systemImage: "calendar")
            
        }.menuStyle(.borderlessButton)
            .fixedSize()
            .popover(isPresented: $showCalendar) {
                DatePicker("Custom", selection: $selectedDate, displayedComponents: .date)
                    .labelsHidden()
                    .datePickerStyle(.graphical)
                    .onChange(of: selectedDate) { newValue in
                        dueDate = .custom(newValue)
                        showCalendar = false
                    }
            }
    }
}

struct DateSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        DateSelectionView(dueDate: .constant(nil))
    }
}
