//
//  MonthModel.swift
//  Months
//
//  Created by Yasser Farahi on 14/11/2024.
//

import Foundation

enum MonthType: String, Equatable {
    case january = "January"
    case february = "February"
    case march = "March"
    case april = "April"
    case may = "May"
    case june = "June"
    case july = "July"
    case august = "August"
    case september = "September"
    case october = "October"
    case november = "November"
    case december = "December"
}

struct MonthModel: Identifiable, Equatable {
    let id: Int
    let name: String
    let nameOrigin: String
    let funFact: String
    var type: MonthType { return .init(rawValue: name) ?? .january}
}

extension MonthModel {
    static let mockData: [Self] = [
        .init(id: 1,
              name: "January",
              nameOrigin: "Named after Janus, the Roman god of doors and beginnings, symbolizing transitions.",
              funFact: "New Year’s resolutions date back to ancient Babylonian times!"),
        .init(id: 2,
              name: "February",
              nameOrigin: "Named after “Februa,” an ancient Roman festival of purification.",
              funFact: "It’s the only month that can go as short as 28 days, and a full moon in February is rare."),
        .init(id: 3,
              name: "March",
              nameOrigin: "Named for Mars, the Roman god of war, as it marked the start of the military campaign season.",
              funFact: "Many cultures once celebrated the new year in March due to spring’s renewal."),
        .init(id: 4,
              name: "April",
              nameOrigin: "Likely from “aperire,” Latin for “to open,” referring to flowers and buds.",
              funFact: "April Fool’s Day originated in the 16th century, poking fun at those who missed the new year’s shift."),
        .init(id: 5,
              name: "May",
              nameOrigin: "Named after Maia, the Roman goddess of growth and fertility.",
              funFact: "In ancient Greece, May was a joyful month for harvest celebrations."),
        .init(id: 6,
              name: "June",
              nameOrigin: "From Juno, the Roman goddess of marriage and childbirth.",
              funFact: "June is a popular month for weddings, possibly inspired by Juno’s connection to marriage."),
        .init(id: 7,
              name: "July",
              nameOrigin: "Named after Julius Caesar, who reformed the calendar.",
              funFact: "July 4th marks the independence celebration in the U.S., known as Independence Day."),
        .init(id: 8,
              name: "August",
              nameOrigin: "Named in honor of Emperor Augustus, Julius Caesar’s successor.",
              funFact: "Augustus chose this month as it held many of his notable achievements."),
        .init(id: 9,
              name: "September",
              nameOrigin: " From “septem,” Latin for “seven,” as it was originally the seventh month in the old Roman calendar.",
              funFact: "The autumn equinox often falls in September, marking equal day and night."),
        .init(id: 10,
              name: "October",
              nameOrigin: "From “octo,” Latin for “eight,” reflecting its original position in the Roman calendar.",
              funFact: "October’s name remains despite calendar changes; it’s famous for Halloween."),
        .init(id: 11,
              name: "November",
              nameOrigin: "From “novem,” Latin for “nine,” as it was the ninth month originally.",
              funFact: "November has Remembrance Day, honoring those who served in war."),
        .init(id: 12,
              name: "December",
              nameOrigin: "From “decem,” Latin for “ten,” being the tenth month in the early Roman year.",
              funFact: "Known for holiday celebrations like Christmas, bringing warmth to winter."),
    ]
}
