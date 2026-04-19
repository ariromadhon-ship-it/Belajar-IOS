import Foundation

struct Destination {
    let id: Int
    let name: String
    let imageName: String
    let description: String
    let country: String
    let bestTimeToVisit: String
    let attractions: [String]
    let estimatedBudget: String
}

class DestinationDataManager {
    static let destinations: [Destination] = [
        Destination(
            id: 1,
            name: "Bali, Indonesia",
            imageName: "bali",
            description: "Bali is a famous Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs. The island is also famous for its arts and crafts.",
            country: "Indonesia",
            bestTimeToVisit: "April - October",
            attractions: ["Tanah Lot Temple", "Ubud Monkey Forest", "Mount Batur", "Seminyak Beach"],
            estimatedBudget: "$50-100 per day"
        ),
        Destination(
            id: 2,
            name: "Tokyo, Japan",
            imageName: "tokyo",
            description: "Tokyo is Japan's vibrant, densely populated capital and largest metropolitan area. It hosts the Japanese Emperor and national government.",
            country: "Japan",
            bestTimeToVisit: "March - May, September - November",
            attractions: ["Senso-ji Temple", "Shibuya Crossing", "Tokyo Tower", "Meiji Shrine"],
            estimatedBudget: "$100-150 per day"
        ),
        Destination(
            id: 3,
            name: "Paris, France",
            imageName: "paris",
            description: "Paris, France's capital, is famed for its art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine.",
            country: "France",
            bestTimeToVisit: "April - June, September - October",
            attractions: ["Eiffel Tower", "Louvre Museum", "Notre-Dame Cathedral", "Arc de Triomphe"],
            estimatedBudget: "$120-180 per day"
        ),
        Destination(
            id: 4,
            name: "New York City, USA",
            imageName: "newyork",
            description: "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. It is famous for its iconic skyline and world-class attractions.",
            country: "United States",
            bestTimeToVisit: "September - December, March - May",
            attractions: ["Statue of Liberty", "Times Square", "Central Park", "Empire State Building"],
            estimatedBudget: "$150-200 per day"
        ),
        Destination(
            id: 5,
            name: "Bangkok, Thailand",
            imageName: "bangkok",
            description: "Bangkok is Thailand's capital and most populous city. Known as the 'City of Angels', it is famous for its ornate Buddhist temples, vibrant street life, and seafood.",
            country: "Thailand",
            bestTimeToVisit: "November - February",
            attractions: ["Grand Palace", "Wat Pho Temple", "Floating Markets", "Chao Phraya River"],
            estimatedBudget: "$40-80 per day"
        ),
        Destination(
            id: 6,
            name: "Sydney, Australia",
            imageName: "sydney",
            description: "Sydney is Australia's largest city and is famous for the Sydney Opera House and Harbour Bridge. It is one of the most beautiful cities in the world.",
            country: "Australia",
            bestTimeToVisit: "September - November, March - May",
            attractions: ["Sydney Opera House", "Bondi Beach", "Harbour Bridge", "Blue Mountains"],
            estimatedBudget: "$120-160 per day"
        ),
        Destination(
            id: 7,
            name: "Dubai, United Arab Emirates",
            imageName: "dubai",
            description: "Dubai is a city known for luxury shopping, ultramodern architecture, and a lively nightlife scene. It is home to the world's tallest building, the Burj Khalifa.",
            country: "United Arab Emirates",
            bestTimeToVisit: "November - March",
            attractions: ["Burj Khalifa", "Palm Jumeirah", "Dubai Mall", "Desert Safari"],
            estimatedBudget: "$100-150 per day"
        ),
        Destination(
            id: 8,
            name: "Rome, Italy",
            imageName: "rome",
            description: "Rome is Italy's capital and largest city. Home to the Colosseum, Vatican City, and countless bridges and cobblestone streets.",
            country: "Italy",
            bestTimeToVisit: "April - June, September - October",
            attractions: ["Colosseum", "Vatican City", "Roman Forum", "Trevi Fountain"],
            estimatedBudget: "$80-120 per day"
        ),
        Destination(
            id: 9,
            name: "Barcelona, Spain",
            imageName: "barcelona",
            description: "Barcelona is the capital of Catalonia and Spain's second-largest city. Known for its architectural works and vibrant culture.",
            country: "Spain",
            bestTimeToVisit: "April - June, September - October",
            attractions: ["Sagrada Familia", "Park Güell", "Gothic Quarter", "Las Ramblas"],
            estimatedBudget: "$70-110 per day"
        ),
        Destination(
            id: 10,
            name: "Machu Picchu, Peru",
            imageName: "machupicchu",
            description: "Machu Picchu is an ancient Inca citadel located high in the Andes Mountains of Peru. It is one of the most iconic landmarks in South America.",
            country: "Peru",
            bestTimeToVisit: "May - September",
            attractions: ["Incan Ruins", "Huayna Picchu Trail", "Aguas Calientes", "Sacred Valley"],
            estimatedBudget: "$60-100 per day"
        ),
        Destination(
            id: 11,
            name: "Amsterdam, Netherlands",
            imageName: "amsterdam",
            description: "Amsterdam is the capital of the Netherlands, famous for its canals, bicycle culture, museums, and vibrant nightlife.",
            country: "Netherlands",
            bestTimeToVisit: "April - May, September - October",
            attractions: ["Canal Tours", "Anne Frank House", "Van Gogh Museum", "Bike Riding"],
            estimatedBudget: "$80-130 per day"
        ),
        Destination(
            id: 12,
            name: "Singapore",
            imageName: "singapore",
            description: "Singapore is a global hub for finance, trade, transportation, and technology. Known for its modern architecture and multicultural heritage.",
            country: "Singapore",
            bestTimeToVisit: "February - April, July - September",
            attractions: ["Marina Bay Sands", "Gardens by the Bay", "Sentosa Island", "Merlion Park"],
            estimatedBudget: "$60-100 per day"
        )
    ]
}
