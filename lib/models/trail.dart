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
);
