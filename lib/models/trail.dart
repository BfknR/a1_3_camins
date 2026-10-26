class Trail({
  required final String region,
  required final String title,
  required final double rating,
  required final int reviewCount,
  required final double distance,
  required final int incline,
  required final String time, // A string works if the value is just for show, if needed to make operations, must be converted into a proper time variable
  required final String
  difficulty, // This should evolve into an enum in future updates
  required final String about,
  required final List<String> photoPaths,
  required final List<Stage> stages,
});

class Stage({
  required final String title,
  required final String distance, // Distance should be a double but due to the nature of the exercise we'll keep it a String.
  required final String time,
});

final Trail estanysColomers = Trail(
  region: "PIRINEU · VAL D'ARAN",
  title: "Circuit dels Estanys de Colomers",
  rating: 4.8,
  reviewCount: 126,
  distance: 9.4,
  incline: 620,
  time: "3 h 45",
  difficulty: "Moderada",
  about: "Una volta circular pel cor del circ de Colomers, amb una desena d'estanys d'origen glacial. El camí està ben senyalitzat i la pujada és constant però sense trams tècnics. Ideal per a finals de primavera i estiu.",
  photoPaths: [
    "forest.jpg",
    "lake.jpg",
    "meadow.jpg",
    "peaks.jpg",
    "sunset.jpg",
    "waterfall.jpg",
  ],
  stages: [
    banysDeTredos,
    refugiDeColomers,
    estanyMajor,
    estanyObago,
    tornadaAlsBanys,
  ],
);

final Stage banysDeTredos = Stage(
  title: "Banys de Tredòs",
  distance: "Sortida · 1.750 m",
  time: "0:00",
);

final Stage refugiDeColomers = Stage(
  title: "Refugi de Colomers",
  distance: "3,1 km · 2.135 m",
  time: "1:10",
);

final Stage estanyMajor = Stage(
  title: "Estany Major",
  distance: "4,6 km · 2.180 m",
  time: "1:45",
);

final Stage estanyObago = Stage(
  title: "Estany Obago",
  distance: "4,6 km · 2.240 m",
  time: "2:30",
);

final Stage tornadaAlsBanys = Stage(
  title: "Tornada als Banys",
  distance: "9,4 km · 1.750 m",
  time: "3:45",
);
