CREATE (PlanteRacine:Influence {type:'Racine'})
CREATE (PlanteFeuille:Influence {type:'Feuille'})
CREATE (PlanteFleur:Influence {type:'Fleur'})
CREATE (PlanteFruit:Influence {type:'Fruit'})

CREATE (Ail:Plante {nom:'Ail'})
CREATE (Asperge:Plante {nom:'Asperge'})
CREATE (Aubergine:Plante {nom:'Aubergine'})
CREATE (Bette:Plante {nom:'Bette'})
CREATE (Betterave:Plante {nom:'Betterave'})
CREATE (Carotte:Plante {nom:'Carotte'})
CREATE (Celeri:Plante {nom:'Céleri'})
CREATE (Chicoree:Plante {nom:'Chicorée'})
CREATE (Chou:Plante {nom:'Chou'})
CREATE (Concombre:Plante {nom:'Concombre ou Cornichon'})
CREATE (Courge:Plante {nom:'Courge'})
CREATE (Endive:Plante {nom:'Endive'})
CREATE (Epinard:Plante {nom:'Épinard'})
CREATE (Fenouil:Plante {nom:'Fenouil'})
CREATE (Haricot:Plante {nom:'Haricot'})
CREATE (Laitue:Plante {nom:'Laitue'})
CREATE (Mache:Plante {nom:'Mâche'})
CREATE (Mais:Plante {nom:'Maïs'})
CREATE (Melon:Plante {nom:'Melon'})
CREATE (Oignon:Plante {nom:'Oignon'})
CREATE (Poireau:Plante {nom:'Poireau'})
CREATE (Pois:Plante {nom:'Pois'})
CREATE (PommeDeTerre:Plante {nom:'Pomme de terre'})
CREATE (Radis:Plante {nom:'Radis'})
CREATE (Tomate:Plante {nom:'Tomate'})


CREATE (Ciboulette:Plante {nom:'Ciboulette'})
CREATE (Coriandre:Plante {nom:'Coriandre'})

CREATE (Fraise:Plante {nom:'Fraise'})
CREATE (Peche:Plante {nom:'Pêche'})

CREATE (Calendula:Plante {nom:'Calendula (Souci)'})
CREATE (Capucine:Plante {nom:'Calendula (Souci)'})

CREATE
  (Ail)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Asperge)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Aubergine)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Bette)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Betterave)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Carotte)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Calendula)-[:EST_UNE_PLANTE]->(PlanteFleur),
  (Celeri)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Chicoree)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Chou)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Chou)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Coriandre)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Ciboulette)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Capucine)-[:EST_UNE_PLANTE]->(PlanteFleur),
  (Concombre)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Courge)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Endive)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Epinard)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Epinard)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Fenouil)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Fenouil)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Fraise)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Haricot)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Laitue)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Mache)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Mais)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Melon)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Oignon)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Poireau)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Pois)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Peche)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (PommeDeTerre)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Radis)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Tomate)-[:EST_UNE_PLANTE]->(PlanteFruit)

CREATE
  (Ail)-[:ASSOCIATION_FAVORABLE]->(Betterave),
  (Ail)-[:ASSOCIATION_FAVORABLE]->(Tomate),
  (Ail)-[:ASSOCIATION_FAVORABLE]->(Ciboulette),
  (Ail)-[:ASSOCIATION_FAVORABLE]->(Fraise),
  (Ail)-[:ASSOCIATION_FAVORABLE]->(Peche),
  (Ail)-[:ASSOCIATION_DEFAVORABLE]->(Pois),
  (Ail)-[:ASSOCIATION_DEFAVORABLE]->(Chou),
  (Ail)-[:ASSOCIATION_DEFAVORABLE]->(Haricot),
  (Ail)-[:ASSOCIATION_DEFAVORABLE]->(Asperge),
  (Aubergine)-[:ASSOCIATION_FAVORABLE]->(Haricot),
  (Aubergine)-[:ASSOCIATION_FAVORABLE]->(Aubergine),
  (Aubergine)-[:ASSOCIATION_DEFAVORABLE]->(PommeDeTerre),
  (Bette)-[:ASSOCIATION_FAVORABLE]->(Celeri),
  (Bette)-[:ASSOCIATION_FAVORABLE]->(Laitue),
  (Bette)-[:ASSOCIATION_FAVORABLE]->(Haricot),
  (Bette)-[:ASSOCIATION_FAVORABLE]->(Oignon),
  (Bette)-[:ASSOCIATION_DEFAVORABLE]->(Epinard),
  (Bette)-[:ASSOCIATION_DEFAVORABLE]->(Betterave),
  (Betterave)-[:ASSOCIATION_FAVORABLE]->(Celeri),
  (Betterave)-[:ASSOCIATION_FAVORABLE]->(Chou),
  (Betterave)-[:ASSOCIATION_FAVORABLE]->(Laitue),
  (Betterave)-[:ASSOCIATION_FAVORABLE]->(Oignon),
  (Betterave)-[:ASSOCIATION_DEFAVORABLE]->(Asperge),
  (Carotte)-[:ASSOCIATION_FAVORABLE]->(Pois),
  (Carotte)-[:ASSOCIATION_FAVORABLE]->(Poireau),
  (Carotte)-[:ASSOCIATION_FAVORABLE]->(Coriandre),
  (Carotte)-[:ASSOCIATION_FAVORABLE]->(Oignon),
  (Carotte)-[:ASSOCIATION_DEFAVORABLE]->(Chou),
  (Carotte)-[:ASSOCIATION_DEFAVORABLE]->(Fenouil),
  (Celeri)-[:ASSOCIATION_FAVORABLE]->(Poireau),
  (Celeri)-[:ASSOCIATION_FAVORABLE]->(Haricot),
  (Celeri)-[:ASSOCIATION_FAVORABLE]->(Concombre),
  (Celeri)-[:ASSOCIATION_DEFAVORABLE]->(Mais),
  (Celeri)-[:ASSOCIATION_DEFAVORABLE]->(Laitue),
  (Celeri)-[:ASSOCIATION_DEFAVORABLE]->(Persil),
  (Chicoree)-[:ASSOCIATION_FAVORABLE]->(Fraise),
  (Chicoree)-[:ASSOCIATION_DEFAVORABLE]->(Fenouil),
  (Chicoree)-[:ASSOCIATION_DEFAVORABLE]->(Chou),
  (Chou)-[:ASSOCIATION_FAVORABLE]->(Laitue),
  (Chou)-[:ASSOCIATION_FAVORABLE]->(Betterave),
  (Chou)-[:ASSOCIATION_DEFAVORABLE]->(Fraise),
  (Chou)-[:ASSOCIATION_DEFAVORABLE]->(Haricot),
  (Chou)-[:ASSOCIATION_DEFAVORABLE]->(Fenouil),
  (Chou)-[:ASSOCIATION_DEFAVORABLE]->(Tomate),
  (Concombre)-[:ASSOCIATION_FAVORABLE]->(Radis),
  (Concombre)-[:ASSOCIATION_FAVORABLE]->(Chou),
  (Concombre)-[:ASSOCIATION_FAVORABLE]->(Celeri),
  (Concombre)-[:ASSOCIATION_FAVORABLE]->(Laitue),
  (Concombre)-[:ASSOCIATION_FAVORABLE]->(Haricot),
  (Concombre)-[:ASSOCIATION_DEFAVORABLE]->(PommeDeTerre),
  (Concombre)-[:ASSOCIATION_DEFAVORABLE]->(Tomate),
  (Courge)-[:ASSOCIATION_FAVORABLE]->(Mais),
  (Courge)-[:ASSOCIATION_FAVORABLE]->(Capucine),
  (Courge)-[:ASSOCIATION_FAVORABLE]->(Calendula),
  (Courge)-[:ASSOCIATION_DEFAVORABLE]->(Fenouil),
  (Courge)-[:ASSOCIATION_DEFAVORABLE]->(Chou),
  (Epinard)-[:ASSOCIATION_FAVORABLE]->(Fraise),
  (Epinard)-[:ASSOCIATION_FAVORABLE]->(Haricot),
  (Epinard)-[:ASSOCIATION_FAVORABLE]->(Chou),
  (Epinard)-[:ASSOCIATION_FAVORABLE]->(Pois),
  (Epinard)-[:ASSOCIATION_FAVORABLE]->(Laitue),
  (Epinard)-[:ASSOCIATION_FAVORABLE]->(Chicoree),
  (Epinard)-[:ASSOCIATION_FAVORABLE]->(Celeri),
  (Epinard)-[:ASSOCIATION_FAVORABLE]->(Radis)






