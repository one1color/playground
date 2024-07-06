import struct SwiftUI.Image

struct Genre {
  struct Subgenre {
    let genreName: String
    let name: String
  }

  let name: String
  let subgenres: [Subgenre]
}

// MARK: - internal
extension Genre {
  /// From [Wikipedia's List of popular music genres](https://en.wikipedia.org/wiki/List_of_popular_music_genres).
  /// - Copyright: [Creative Commons Attribution-ShareAlike](https://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
  static let list = [
    ( name: "Blues",
      subgenres: [
        "African blues",
        "Blues rock",
        "Canadian blues",
        "Chicago blues",
        "Classic female blues",
        "Contemporary R&B",
        "Country blues",
        "Delta blues",
        "Detroit blues",
        "Electric blues",
        "Gospel blues",
        "Hill country blues",
        "Jump blues",
        "Kansas City blues",
        "Louisiana blues",
        "Memphis blues",
        "New Orleans blues",
        "Piedmont blues",
        "Punk blues",
        "Rhythm and blues",
        "Soul blues",
        "St. Louis blues",
        "Swamp blues",
        "Texas blues",
        "West Coast blues"
      ]
    ),
    ( name: "Caribbean",
      subgenres: [
        "Baithak Gana",
        "Dancehall",
        "Bouyon",
        "Cadence-lypso",
        "Calypso",
        "Cha-cha-chá",
        "Chutney",
        "Chutney soca",
        "Chutney parang",
        "Compas",
        "Mambo",
        "Merengue",
        "Méringue",
        "Mozambique",
        "Pichakaree",
        "Punta",
        "Punta Rock",
        "Rasin",
        "Reggae",
        "Dub",
        "Lovers rock",
        "Ragga",
        "Ragga jungle",
        "Reggae fusion",
        "Reggaeton",
        "Rocksteady",
        "Rumba",
        "Ska",
        "Two-tone",
        "Ska punk",
        "Salsa",
        "Son cubano",
        "Songo",
        "Soca",
        "Power Soca",
        "Timba",
        "Twoubadou",
        "Zouk"
      ]
    ),
    ( name: "Country",
      subgenres: [
        "Alternative country",
        "Cowpunk",
        "Americana (music)|Americana",
        "Australian country music|Australian country",
        "Bakersfield sound",
        "Bluegrass music|Bluegrass",
        "Progressive bluegrass",
        "Cajun",
        "Cajun fiddle",
        "Christian country",
        "Classic country",
        "Close harmony",
        "Country blues",
        "Country pop",
        "Country rap",
        "Country rock",
        "Cowboy",
        "Cowboy pop",
        "Dansband",
        "Hokum",
        "Honky tonk",
        "Música sertaneja",
        "Nashville sound",
        "Neotraditional country",
        "Outlaw country",
        "Progressive country",
        "Red Dirt",
        "Rockabilly",
        "Hellbilly",
        "Psychobilly",
        "Texas country",
        "Traditional country",
        "Truck-driving country",
        "Western swing",
        "Zydeco"
      ]
    ),
    ( name: "Electronic",
      subgenres: [
        "Ambient",
        "Ambient dub",
        "Dark ambient",
        "Dungeon synth",
        "Isolationism",
        "Drone",
        "New-age",
        "Andean new-age",
        "Neoclassical new-age",
        "Space music",
        "Reductionism",
        "Lowercase",
        "Onkyokei",
        "Bass music",
        "Future bass",
        "Kawaii future bass",
        "Slime punk",
        "UK bass",
        "Breakbeat",
        "Acid breaks",
        "Baltimore club",
        "Jersey club",
        "Big beat",
        "Breakbeat hardcore",
        "4-beat",
        "Darkcore",
        "Broken beat",
        "Florida breaks",
        "Nu skool breaks",
        "Progressive breaks",
        "Disco",
        "Afro/cosmic music",
        "Electro-disco",
        "Hi-NRG",
        "Eurobeat",
        "Eurodance",
        "Hands up",
        "Italo dance",
        "Italo disco",
        "Spacesynth",
        "Space disco",
        "Euro disco",
        "Nu-disco",
        "Post-disco",
        "Boogie",
        "City pop",
        "Downtempo",
        "Acid jazz",
        "Chill-out",
        "Illbient",
        "Trip hop",
        "Drum and bass",
        "Darkstep",
        "Drumstep",
        "Funkstep",
        "Hardstep",
        "Intelligent drum and bass",
        "Jazzstep",
        "Jump-up",
        "Liquid funk",
        "Neurofunk",
        "Sambass",
        "Techstep",
        "Dub",
        "Dub poetry",
        "Electroacoustic music",
        "Acousmatic music",
        "Electroacoustic improvisation",
        "Live electronics",
        "Musique concrète",
        "Electronic rock",
        "Dance-rock",
        "Alternative dance",
        "Madchester",
        "Baggy",
        "Dance-punk",
        "New rave",
        "Electronicore",
        "Krautrock",
        "New wave",
        "Cold wave",
        "Dark wave",
        "Neoclassical dark wave",
        "Neue Deutsche Todeskunst",
        "Ethereal wave",
        "Nu-gaze",
        "Minimal wave",
        "Neue Deutsche Welle",
        "New romantic",
        "Synth-pop",
        "Dance-pop",
        "Disco polo",
        "Electroclash",
        "Electropop",
        "Indietronica",
        "Post-rock",
        "Space rock",
        "Synth-punk",
        "Electronica",
        "Kosmische Musik|Berlin School",
        "Dubtronica",
        "Folktronica",
        "Funktronica",
        "Jazztronica",
        "Laptronica",
        "Livetronica",
        "Progressive electronic",
        "Ethnic electronica",
        "Asian underground",
        "African electronic dance music",
        "Afrobeats",
        "Azonto",
        "Coupé-Décalé",
        "Kuduro",
        "Mahraganat",
        "Shangaan electro",
        "Dancehall pop",
        "Nortec",
        "Rabòday",
        "Rara tech",
        "Shamstep",
        "Trival",
        "Worldbeat",
        "Manila sound",
        "Jungle",
        "Ragga jungle",
        "Hardcore",
        "Bouncy techno",
        "Breakcore",
        "Raggacore",
        "Cybergrind",
        "Digital hardcore",
        "Doomcore",
        "Frenchcore",
        "Gabber",
        "Mainstream hardcore",
        "Happy hardcore",
        "Lento violento",
        "Mákina",
        "Speedcore",
        "Extratone",
        "Splittercore",
        "Hardstyle",
        "Dubstyle",
        "Jumpstyle",
        "Hauntology",
        "Chillwave",
        "Hypnagogic pop",
        "Synthwave",
        "Sovietwave",
        "Vaporwave",
        "Future funk",
        "Hardvapour",
        "Mallsoft",
        "Hip hop",
        "Afroswing",
        "Alternative hip hop",
        "Hipster hop",
        "Cloud rap",
        "Crunk",
        "Crunkcore",
        "Snap music",
        "Emo rap",
        "Electro",
        "Latin freestyle",
        "Hip house",
        "Instrumental hip hop",
        "Lo-fi hip hop",
        "Merenrap",
        "Merenhouse",
        "Miami bass",
        "Funk carioca",
        "Funk ostentação",
        "Melodic funk",
        "Proibidão",
        "Rasteirinha",
        "Mumble rap",
        "Trap music|Trap",
        "Drill music|Drill",
        "UK drill",
        "Latin trap",
        "Phonk",
        "Trap (EDM)",
        "UK trap",
        "Industrial",
        "Deconstructed club",
        "Electro-industrial",
        "Dark electro",
        "Aggrotech",
        "Electronic body music (EBM)",
        "Futurepop",
        "New beat",
        "Industrial hip hop",
        "Industrial metal",
        "Neue Deutsche Härte",
        "Industrial rock",
        "Martial industrial",
        "Neofolk",
        "Witch house",
        "Intelligent dance music (IDM)",
        "Drill 'n' bass",
        "Glitch",
        "Glitch hop",
        "Noise music",
        "Danger music",
        "Japanoise",
        "Harsh noise",
        "Harsh noise wall",
        "Power electronics",
        "Death industrial",
        "Power noise",
        "Plunderphonics",
        "Sampledelia",
        "Techno",
        "Acid techno",
        "Ambient techno",
        "Birmingham sound",
        "Bleep techno",
        "Detroit techno",
        "Dub techno",
        "Hardtechno",
        "Free tekno",
        "Industrial techno",
        "Minimal techno",
        "Schaffel",
        "Toytown techno",
        "Trance music",
        "Acid trance",
        "Balearic trance",
        "Dream trance",
        "Euro-trance",
        "Hard trance",
        "Goa trance",
        "Nitzhonot",
        "Progressive trance",
        "Psychedelic trance",
        "Dark psytrance",
        "Full-On",
        "Progressive psytrance",
        "Psybient",
        "Psydub",
        "Suomisaundi",
        "Zenonesque",
        "Tech trance",
        "Uplifting trance",
        "Vocal trance",
        "UK garage",
        "2-step garage",
        "Bassline",
        "Breakstep",
        "Dubstep",
        "Brostep",
        "Powwow-step",
        "Post-dubstep",
        "Reggaestep",
        "Riddim",
        "Future garage",
        "Grime",
        "Grindie",
        "Speed garage",
        "UK funky",
        "Wonky",
        "Video game music",
        "Chiptune",
        "Bitpop",
        "Skweee",
        "Nintendocore",
        "FM synthesis",
        "Sequencer music"
      ]
    ),
    ( name: "House",
      subgenres: [
        "Acid house",
        "Afro house",
        "Amapiano",
        "Gqom",
        "Kidandali",
        "Kwaito",
        "Ambient house",
        "Balearic beat",
        "Styles of house music#B|Bass house",
        "Brazilian bass",
        "Changa tuki",
        "Chicago hard house",
        "Chicago house",
        "Deep house",
        "Diva house",
        "Hardbag",
        "Electro house",
        "Big room house",
        "Complextro",
        "Dutch house",
        "Fidget house",
        "Jungle terror",
        "Melbourne bounce",
        "Electro swing",
        "Euro house",
        "French house",
        "Funky house",
        "Future house",
        "Garage house",
        "Ghetto house",
        "Ghettotech",
        "Juke house",
        "Footwork (genre)|Footwork",
        "Hip house",
        "Italo house",
        "Nu jazz|Jazz house",
        "Latin house",
        "Microhouse",
        "Moombahton",
        "Moombahcore",
        "New Jersey sound",
        "Outsider house",
        "Progressive house",
        "Tech house",
        "Tribal house",
        "Tropical house",
        "UK hard house",
        "Hard dance",
        "Hard NRG",
        "Pumping house",
        "Hardbass",
        "Scouse house"
      ]
    ),
    ( name: "Folk",
      subgenres: [
        "Anti-folk",
        "Turbo-folk",
        "Celtic",
        "Chalga",
        "Filk",
        "Folk rock",
        "Folktronica",
        "Freak folk",
        "Indie folk",
        "Industrial folk",
        "Neofolk",
        "Progressive folk",
        "Protest song",
        "Psychedelic folk",
        "Singer-songwriter",
        "Skiffle",
        "Sung poetry",
        "Traditional Folk",
        "Western music"
      ]
    ),
    ( name: "Hip hop",
      subgenres: [
        "Alternative hip hop",
        "Australian hip hop",
        "Bongo Flava",
        "Boom bap",
        "British hip hop",
        "Chap hop",
        "Chopper",
        "Christian hip hop",
        "Cloud rap",
        "Conscious hip hop",
        "Crunk",
        "Crunkcore",
        "Drill",
        "Electro",
        "Emo hip hop",
        "Experimental hip hop",
        "G-funk",
        "Ghetto house",
        "Ghettotech",
        "Golden age hip hop",
        "Grime",
        "Hardcore hip hop",
        "Hip house",
        "Hiplife",
        "Hip pop",
        "Hyphy",
        "Industrial hip hop",
        "Instrumental hip hop",
        "Jazz rap",
        "Jersey club",
        "Kwaito",
        "Lofi",
        "Low Bap",
        "Lyrical hip hop",
        "Merenrap",
        "Motswako",
        "Mumble rap",
        "Nerdcore",
        "New jack swing",
        "New school hip hop",
        "Old school hip hop",
        "Political hip hop",
        "Ragga",
        "Reggaeton",
        "Snap",
        "Jerkin'",
        "Trap",
        "Urban Pasifika",
        "Emo rap",
        "K-rap",
        "J-rap",
        "Horrorcore"
      ]
    ),
    ( name: "Jazz",
      subgenres: [
        "Acid jazz",
        "Afro-Cuban jazz",
        "Avant-garde jazz",
        "Bebop",
        "Boogie-woogie",
        "Bossa nova",
        "British dance band",
        "Cape jazz",
        "Chamber jazz",
        "Continental jazz",
        "Cool jazz",
        "Crossover jazz",
        "Dixieland",
        "Ethno jazz",
        "European free jazz",
        "Free funk",
        "Free improvisation",
        "Free jazz",
        "Gypsy jazz",
        "Hard bop",
        "Jazz blues",
        "Jazz-funk",
        "Jazz fusion",
        "Jazz rap",
        "Jazz rock",
        "Kansas City blues",
        "Kansas City jazz",
        "Latin jazz",
        "Livetronica",
        "Lofi",
        "M-Base",
        "Mainstream jazz",
        "Modal jazz",
        "Neo-bop jazz",
        "Neo-swing",
        "Novelty ragtime",
        "Nu jazz",
        "Orchestral jazz",
        "Post-bop",
        "Progressive jazz",
        "Psychedelic jazz",
        "Punk jazz",
        "Ragtime",
        "Shibuya-kei",
        "Ska jazz",
        "Smooth jazz",
        "Soul jazz",
        "Stride jazz",
        "Straight-ahead jazz",
        "Swing",
        "Third stream",
        "Trad jazz",
        "Vocal jazz",
        "West Coast jazz"
      ]
    ),
    ( name: "Latin",
      subgenres: [
        "Axé music|Axé",
        "Brazilian rock",
        "Brega",
        "Tecnobrega",
        "Choro",
        "Forró",
        "Frevo",
        "Funk Carioca",
        "Lambada",
        "Maracatu",
        "Música popular brasileira",
        "Tropicalia",
        "Música sertaneja",
        "Samba",
        "Pagode",
        "Samba rock",
        "Latin Christian",
        "Latin jazz",
        "Afro-Cuban jazz",
        "Bossa Nova",
        "Latin pop",
        "Latin ballad",
        "Latin rock",
        "Latin alternative",
        "Rock en Español",
        "Reggaeton",
        "Latin trap",
        "Regional Mexican",
        "Banda",
        "Grupera",
        "Mariachi",
        "Ranchera",
        "Norteño",
        "Tejano",
        "Turbo-folk",
        "Bullerengue",
        "Fado",
        "Huayno",
        "Mexican son",
        "Música criolla",
        "Nueva canción",
        "Tropical",
        "Bachata",
        "Bolero",
        "Criolla",
        "Cumbia",
        "Chicha",
        "Porro",
        "Guajira",
        "Mambo",
        "Merengue",
        "Cuban rumba",
        "Salsa",
        "Salsa romántica",
        "Son",
        "Timba",
        "Tropipop",
        "Vallenato"
      ]
    ),
    ( name: "Pop",
      subgenres: [
        "Adult contemporary",
        "Arabic pop",
        "Baroque pop",
        "Brill Building",
        "Britpop",
        "Bubblegum pop",
        "Canción",
        "Canzone",
        "Chalga",
        "Chanson",
        "Christian pop",
        "Classical crossover",
        "Country pop",
        "C-pop",
        "Hokkien pop",
        "Mandopop",
        "Dance-pop",
        "Disco polo",
        "Electropop",
        "Europop",
        "Austropop",
        "Eurobeat",
        "French pop",
        "Italo dance",
        "Italo disco",
        "Laïkó",
        "Latin pop",
        "Nederpop",
        "Russian pop",
        "Fado",
        "Folk pop",
        "Iranian pop",
        "Indie pop",
        "J-pop",
        "Jangle pop",
        "K-pop",
        "Korean rock",
        "T'ong guitar",
        "Trot",
        "Lofi",
        "Mexican pop",
        "New Romantic",
        "Operatic pop",
        "Power pop",
        "Soft rock",
        "Pop punk",
        "Neon pop",
        "Emo pop",
        "Pop soul",
        "P-Pop",
        "Original Pilipino Music",
        "Progressive pop",
        "Psychedelic pop",
        "Rebetiko",
        "Schlager",
        "Sophisti-pop",
        "Space age pop",
        "Sunshine pop",
        "Surf",
        "Swamp pop",
        "Synthpop",
        "Teen pop",
        "Traditional pop",
        "Turkish pop",
        "Vispop",
        "Wonky pop",
        "Worldbeat"
      ]
    ),
    ( name: "R&B and soul",
      subgenres: [
        "Contemporary R&B",
        "Disco",
        "Funk",
        "Deep funk",
        "Freestyle music|Freestyle",
        "Go-go",
        "P-Funk",
        "Post-disco",
        "Boogie (genre)|Boogie",
        "Alternative R&B",
        "New jack swing",
        "Rhythm and blues",
        "Soul music|Soul",
        "Blue-eyed soul",
        "Northern soul",
        "Neo soul",
        "Psychedelic Soul",
        "Southern soul"
      ]
    ),
    ( name: "Rock",
      subgenres: [
        "Alternative rock",
        "Britpop",
        "Post-Britpop",
        "Shoegaze",
        "Dream Pop",
        "Grunge",
        "Post-grunge",
        "Indie rock",
        "Dunedin Sound",
        "Math rock",
        "Post-punk revival",
        "Sadcore",
        "Slowcore",
        "Beat music|Beat",
        "Christian rock",
        "Dark cabaret",
        "Electronic rock",
        "Electronicore",
        "Experimental rock",
        "Art rock",
        "Industrial rock",
        "Post-punk",
        "Gothic rock",
        "No wave",
        "Noise rock",
        "Post-rock",
        "Post-metal",
        "Folk rock",
        "Garage rock",
        "Glam rock",
        "Hard rock",
        "Jazz rock",
        "New wave",
        "World fusion",
        "Paisley Underground",
        "Palm Desert Scene|Desert rock",
        "Pop rock",
        "Soft rock",
        "Progressive rock",
        "Canterbury scene",
        "Krautrock",
        "New prog",
        "Rock in Opposition",
        "Space rock",
        "Psychedelic rock",
        "Acid rock",
        "Freakbeat",
        "Neo-psychedelia",
        "Raga rock",
        "Rap rock",
        "Rapcore",
        "Rock and roll",
        "Southern rock",
        "Stoner rock",
        "Sufi rock",
        "Surf rock",
        "Visual kei",
        "Nagoya kei",
        "Worldbeat",
        "Wrock"
      ]
    ),
    ( name: "Heavy metal",
      subgenres: [
        "Alternative metal",
        "Avant-garde metal",
        "Black metal",
        "Symphonic black metal",
        "Viking metal",
        "War metal",
        "National Socialist black metal",
        "Christian metal",
        "Unblack metal",
        "Death metal",
        "Death 'n' roll",
        "Melodic death metal",
        "Technical death metal",
        "Deathgrind",
        "Doom metal",
        "Death-doom",
        "Drone metal",
        "Sludge metal",
        "Stoner rock",
        "Epic metal",
        "Folk metal",
        "Celtic metal",
        "Medieval metal",
        "Pagan metal",
        "Funk metal",
        "Glam metal",
        "Gothic metal",
        "Pirate metal",
        "Grindcore",
        "Nintendocore",
        "Industrial metal",
        "Kawaii metal",
        "Latin metal",
        "Metalcore",
        "Melodic metalcore",
        "Deathcore",
        "Mathcore",
        "Metalstep",
        "Neoclassical metal",
        "Neue Deutsche Härte",
        "Nu metal",
        "Post-metal",
        "Power metal",
        "Progressive metal",
        "Djent",
        "Rap metal",
        "Speed metal",
        "Symphonic metal",
        "Thrash metal",
        "Crossover thrash",
        "Groove metal"
      ]
    ),
    ( name: "Punk Rock",
      subgenres: [
        "Anarcho punk",
        "Crust punk",
        "D-beat",
        "Art punk",
        "Christian punk",
        "Deathrock",
        "Digital hardcore",
        "Folk punk",
        "Celtic punk",
        "Cowpunk",
        "Gypsy punk",
        "Garage punk",
        "Grindcore",
        "Crustgrind",
        "Noisegrind",
        "Goregrind",
        "Hardcore punk",
        "Melodic hardcore",
        "Post-hardcore",
        "Emo",
        "Emo pop",
        "Screamo",
        "Thrashcore",
        "Crossover thrash",
        "Powerviolence",
        "Horror punk",
        "Oi!",
        "Pop punk",
        "Neon pop",
        "Psychobilly",
        "Queercore",
        "Riot grrrl",
        "Rock Against Communism",
        "Ska punk",
        "Skate punk",
        "Street punk"
      ]
    )
  ].map { genre in
    Genre(
      name: genre.name,
      subgenres: genre.subgenres.map {
        Subgenre(genreName: genre.name, name: $0)
      }
    )
  }
}

// MARK: - Hashable, Identifiable
extension Genre: Hashable, Identifiable {
  var id: some Hashable { name }
}

extension Genre.Subgenre: Hashable, Identifiable {
  var id: some Hashable { "\(genreName): \(name)" }
}
