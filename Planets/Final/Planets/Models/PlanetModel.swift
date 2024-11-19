//
//  PlanetModel.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import Foundation

enum  PlanetType: String, Equatable {
    case sun = "Sun"
    case earth = "Earth"
    case moon = "Moon"
    case mars = "Mars"
    case mercury = "Mercury"
    case neptune = "Neptune"
    case jupiter = "Jupiter"
    case saturn = "Saturn"
    case uranus = "Uranus"
    case venus = "Venus"
    case pluto = "Pluto"
}


struct PlanetModel: Equatable, Hashable {
    let type: PlanetType
    let description: String
}

extension PlanetModel: Identifiable {
    var id: String { type.rawValue }
}

extension PlanetModel {
    static let plants: [Self] = [
        .init(type: .sun, description: "Star at the center of solar system"),
        .init(type: .earth, description: "Third planet from the Sun"),
        .init(type: .moon, description: "Earth's natural satellite"),
        .init(type: .mars, description: "Red planet with iron oxide surface"),
        .init(type: .mercury, description: "Closest planet to the Sun"),
        .init(type: .neptune, description: "Blue planet with methane in atmosphere"),
        .init(type: .jupiter, description: "Largest planet with great red spot"),
        .init(type: .saturn, description: "Ringed planet with complex system"),
        .init(type: .uranus, description: "Ice giant tilted on its side"),
        .init(type: .venus, description: "Hot planet with thick toxic atmosphere"),
        .init(type: .pluto, description: "Dwarf planet in Kuiper Belt")
    ]
}

extension PlanetModel {
    static func getFact(for type: PlanetType) -> String {
        switch type {
        case .sun:
            return "The Sun is a G-type main-sequence star (G2V) that accounts for more than 99.8% of the Solar System's total mass. It generates energy through nuclear fusion, converting hydrogen into helium at its core. This process releases immense energy that sustains life on Earth. The Sun's magnetic activity leads to sunspots and solar flares, which can affect space weather and communication systems on Earth."

        case .earth:
            return "Earth is the third planet from the Sun and the only one known to harbor life. It has a dynamic climate system, supporting diverse ecosystems ranging from rainforests to deserts. The planet is shielded by a magnetic field that protects it from harmful solar radiation. Earth’s atmosphere, rich in nitrogen and oxygen, allows for the presence of liquid water, essential for life."

        case .moon:
            return "The Moon, Earth's only natural satellite, is a desolate world with a surface marked by craters, mountains, and lava plains. It plays a crucial role in stabilizing Earth's axial tilt, which affects climate patterns. The Moon’s gravitational pull causes tides on Earth. It has been the destination of human exploration, with the Apollo missions marking significant achievements in space travel."

        case .mars:
            return "Mars, the fourth planet from the Sun, is known as the Red Planet due to its iron oxide-rich surface. It hosts the Solar System’s largest volcano, Olympus Mons, and the deepest canyon, Valles Marineris. Evidence suggests that Mars once had liquid water on its surface, raising the possibility of ancient microbial life. Future missions aim to explore this further and potentially pave the way for human colonization."

        case .mercury:
            return "Mercury, the closest planet to the Sun, experiences the most extreme temperature fluctuations, from scorching days to freezing nights. Its surface resembles that of the Moon, with numerous impact craters. Mercury has a thin atmosphere and a significant iron core, which generates a magnetic field. Despite its proximity to the Sun, it’s not the hottest planet due to its lack of a thick atmosphere."

        case .neptune:
            return "Neptune, the eighth planet from the Sun, is known for its deep blue color caused by methane in its atmosphere. It has the strongest winds in the Solar System, reaching speeds of up to 2,100 km/h. Neptune's largest moon, Triton, orbits in the opposite direction of the planet's rotation, suggesting it was captured by Neptune’s gravity. The planet has a faint ring system and is mostly composed of hydrogen, helium, and ices."

        case .jupiter:
            return "Jupiter, the largest planet in the Solar System, is a gas giant with a mass more than twice that of all the other planets combined. It is famous for its Great Red Spot, a massive storm that has raged for centuries. Jupiter has a strong magnetic field and dozens of moons, including Ganymede, the largest moon in the Solar System. The planet’s colorful cloud bands and fast rotation create a dynamic and ever-changing atmosphere."

        case .saturn:
            return "Saturn, the sixth planet from the Sun, is renowned for its stunning ring system, made up of ice and rock particles. The rings are divided into seven groups, named alphabetically in the order they were discovered. Saturn is a gas giant like Jupiter, but it is less dense, with a possible rocky core. It has numerous moons, including Titan, which has a thick atmosphere and lakes of liquid methane."

        case .uranus:
            return "Uranus is unique among the planets for its extreme axial tilt of about 98 degrees, causing it to rotate on its side. This tilt results in unusual seasonal changes. Uranus is classified as an ice giant, with a cold atmosphere containing water, ammonia, and methane ices. It has a faint ring system and 27 known moons, with Miranda being one of the most geologically diverse bodies in the Solar System."

        case .venus:
            return "Venus, often called Earth's twin due to its similar size and composition, has a thick, toxic atmosphere rich in carbon dioxide, with clouds of sulfuric acid. This greenhouse effect makes Venus the hottest planet, with surface temperatures hot enough to melt lead. The planet has a volcanic landscape with numerous mountains and plains. Despite its harsh conditions, Venus has been a target for many exploratory missions."

        case .pluto:
            return "Pluto, once the ninth planet, is now classified as a dwarf planet located in the Kuiper Belt. It has a complex surface with mountains, valleys, and possibly ice volcanoes. Pluto’s thin atmosphere contains nitrogen, methane, and carbon monoxide. Its largest moon, Charon, is so big that Pluto and Charon are sometimes considered a double dwarf planet system. Pluto's status has sparked ongoing debates in the scientific community."
        }
    }
}
