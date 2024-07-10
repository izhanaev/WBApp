//
//  StringInterpolationView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 09.07.2024.
//

import SwiftUI

struct StringInterpolationView: View {
    @State private var selectedDate = Date()
    @State private var selectedFlag = "🇬🇧"
    let flags = ["🇬🇧", "🇷🇺", "🇫🇷", "🇪🇸", "🇮🇹"]
    let locales = ["en_GB", "ru_RU", "fr_FR", "es_ES", "it_IT"]
    
    let dateWords: [String: [String]] = [
        "en_GB": ["Day before yesterday", "Yesterday", "Today", "Tomorrow", "Day after tomorrow"],
        "ru_RU": ["Позавчера", "Вчера", "Сегодня", "Завтра", "Послезавтра"],
        "fr_FR": ["Avant-hier", "Hier", "Aujourd'hui", "Demain", "Après-demain"],
        "es_ES": ["Anteayer", "Ayer", "Hoy", "Mañana", "Pasado mañana"],
        "it_IT": ["L'altro ieri", "Ieri", "Oggi", "Domani", "Dopodomani"]
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text(NSLocalizedString("select", comment: ""))
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top)
            
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()

            Picker("Select Flag", selection: $selectedFlag) {
                ForEach(flags, id: \.self) { flag in
                    Text(flag).tag(flag)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            VStack(alignment: .leading) {
                ForEach(0..<5) { index in
                    Text(formattedDate(for: index))
                        .foregroundColor(selectedDateTextColor(for: index))
                        .padding(2)
                        .lineLimit(1)
                }
            }
            .padding()
        }
    }

    func formattedDate(for index: Int) -> String {
        let calendar = Calendar.current
        var dateComponent = DateComponents()
        switch index {
        case 0:
            dateComponent.day = -2
        case 1:
            dateComponent.day = -1
        case 2:
            dateComponent.day = 0
        case 3:
            dateComponent.day = 1
        case 4:
            dateComponent.day = 2
        default:
            break
        }
        let targetDate = calendar.date(byAdding: dateComponent, to: selectedDate) ?? selectedDate
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        
        if let localeIndex = flags.firstIndex(of: selectedFlag) {
            dateFormatter.locale = Locale(identifier: locales[localeIndex])
        }
        
        let formattedDate = dateFormatter.string(from: targetDate)
        
        if let localeIndex = flags.firstIndex(of: selectedFlag) {
            let locale = locales[localeIndex]
            if let words = dateWords[locale] {
                return "\(words[index]), \(formattedDate)"
            }
        }
        
        return formattedDate
    }

    func selectedDateTextColor(for index: Int) -> Color {
        return index == 2 ? .blue : .primary
    }
}

#Preview {
    StringInterpolationView()
}
