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
CREATE (Cresson:Plante {nom:'Cresson'})
CREATE (Endive:Plante {nom:'Endive'})
CREATE (Echalotte:Plante {nom:'Échalotte'})
CREATE (Epinard:Plante {nom:'Épinard'})
CREATE (Fenouil:Plante {nom:'Fenouil'})
CREATE (Haricot:Plante {nom:'Haricot'})
CREATE (Laitue:Plante {nom:'Laitue'})
CREATE (Mache:Plante {nom:'Mâche'})
CREATE (Mais:Plante {nom:'Maïs'})
CREATE (Melon:Plante {nom:'Melon'})
CREATE (Navet:Plante {nom:'Navet'})
CREATE (Oignon:Plante {nom:'Oignon'})
CREATE (Panais:Plante {nom:'Panais'})
CREATE (Poireau:Plante {nom:'Poireau'})
CREATE (Pois:Plante {nom:'Pois'})
CREATE (PommeDeTerre:Plante {nom:'Pomme de terre'})
CREATE (Radis:Plante {nom:'Radis'})
CREATE (Tomate:Plante {nom:'Tomate'})
CREATE (Tetragone:Plante {nom:'Tétragone cornue'})

CREATE (Basilic:Plante {nom:'Basilic'})
CREATE (Ciboulette:Plante {nom:'Ciboulette'})
CREATE (Coriandre:Plante {nom:'Coriandre'})
CREATE (Aneth:Plante {nom:'Aneth'})
CREATE (Persil:Plante {nom:'Persil'})
CREATE (Raifort:Plante {nom:'Raifort'})

CREATE (Fraise:Plante {nom:'Fraise'})
CREATE (Peche:Plante {nom:'Pêche'})

CREATE (Absinthe:Plante {nom:'Absinthe'})
CREATE (Calendula:Plante {nom:'Calendula (Souci)'})
CREATE (Capucine:Plante {nom:'Calendula (Souci)'})
CREATE (OeilletInde:Plante {nom:'Œillet d\'Inde'})
CREATE (Tournesol:Plante {nom:'Tournesol'})

CREATE
  (Absinthe)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Ail)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Aneth)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Asperge)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Aubergine)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Basilic)-[:EST_UNE_PLANTE]->(PlanteFeuille),
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
  (Cresson)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Endive)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Epinard)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Epinard)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Echalotte)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Fenouil)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Fenouil)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Fraise)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Haricot)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Laitue)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Mache)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Mais)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Melon)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Navet)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (OeilletInde)-[:EST_UNE_PLANTE]->(PlanteFleur),
  (Oignon)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Panais)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Poireau)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Pois)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Persil)-[:EST_UNE_PLANTE]->(PlanteFeuille),
  (Peche)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (PommeDeTerre)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Radis)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Raifort)-[:EST_UNE_PLANTE]->(PlanteRacine),
  (Tomate)-[:EST_UNE_PLANTE]->(PlanteFruit),
  (Tournesol)-[:EST_UNE_PLANTE]->(PlanteFleur),
  (Tetragone)-[:EST_UNE_PLANTE]->(PlanteFeuille)

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
  (Epinard)-[:ASSOCIATION_FAVORABLE]->(Radis),
  (Fenouil)-[:ASSOCIATION_FAVORABLE]->(Basilic),
  (Fenouil)-[:ASSOCIATION_FAVORABLE]->(Navet),
  (Fenouil)-[:ASSOCIATION_DEFAVORABLE]->(Echalotte),
  (Fenouil)-[:ASSOCIATION_DEFAVORABLE]->(Haricot),
  (Fenouil)-[:ASSOCIATION_DEFAVORABLE]->(Pois),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(Mais),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(PommeDeTerre),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(Celeri),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(Epinard),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(Poireau),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(Chou),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(Aneth),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(Carotte),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(Calendula),
  (Haricot)-[:ASSOCIATION_FAVORABLE]->(OeilletInde),
  (Haricot)-[:ASSOCIATION_DEFAVORABLE]->(Oignon),
  (Haricot)-[:ASSOCIATION_DEFAVORABLE]->(Echalotte),
  (Haricot)-[:ASSOCIATION_DEFAVORABLE]->(Fenouil),
  (Haricot)-[:ASSOCIATION_DEFAVORABLE]->(Ail),
  (Laitue)-[:ASSOCIATION_DEFAVORABLE]->(Persil),
  (Mache)-[:ASSOCIATION_FAVORABLE]->(Poireau),
  (Mache)-[:ASSOCIATION_FAVORABLE]->(Oignon),
  (Mache)-[:ASSOCIATION_FAVORABLE]->(Chou),
  (Mais)-[:ASSOCIATION_FAVORABLE]->(Haricot),
  (Mais)-[:ASSOCIATION_FAVORABLE]->(Courge),
  (Mais)-[:ASSOCIATION_DEFAVORABLE]->(Tournesol),
  (Mais)-[:ASSOCIATION_DEFAVORABLE]->(PommeDeTerre),
  (Melon)-[:ASSOCIATION_FAVORABLE]->(Haricot),
  (Melon)-[:ASSOCIATION_FAVORABLE]->(Laitue),
  (Melon)-[:ASSOCIATION_FAVORABLE {effet:'Protège du vent'}]->(Mais),
  (Melon)-[:ASSOCIATION_FAVORABLE {effet:'Repousse les parasites'}]->(Oignon),
  (Melon)-[:ASSOCIATION_DEFAVORABLE]->(Concombre),
  (Melon)-[:ASSOCIATION_DEFAVORABLE]->(Courge),
  (Oignon)-[:ASSOCIATION_FAVORABLE]->(Carotte),
  (Oignon)-[:ASSOCIATION_FAVORABLE]->(Panais),
  (Oignon)-[:ASSOCIATION_FAVORABLE]->(Laitue),
  (Oignon)-[:ASSOCIATION_FAVORABLE]->(Betterave),
  (Oignon)-[:ASSOCIATION_FAVORABLE]->(Tomate),
  (Oignon)-[:ASSOCIATION_FAVORABLE]->(Chou),
  (Oignon)-[:ASSOCIATION_DEFAVORABLE]->(Haricot),
  (Oignon)-[:ASSOCIATION_DEFAVORABLE]->(Pois),
  (Poireau)-[:ASSOCIATION_FAVORABLE]->(Celeri),
  (Poireau)-[:ASSOCIATION_FAVORABLE]->(Betterave),
  (Poireau)-[:ASSOCIATION_DEFAVORABLE]->(Navet),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(Celeri),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(Carotte),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(Laitue),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(Mais),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(PommeDeTerre),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(Chou),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(Radis),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(Navet),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(Concombre),
  (Pois)-[:ASSOCIATION_FAVORABLE]->(Raifort),
  (Pois)-[:ASSOCIATION_DEFAVORABLE]->(Ail),
  (Pois)-[:ASSOCIATION_DEFAVORABLE]->(Oignon),
  (Pois)-[:ASSOCIATION_DEFAVORABLE]->(Echalotte),
  (Pois)-[:ASSOCIATION_DEFAVORABLE]->(Panais),
  (Pois)-[:ASSOCIATION_DEFAVORABLE]->(Persil),
  (Radis)-[:ASSOCIATION_FAVORABLE]->(Chou),
  (Radis)-[:ASSOCIATION_FAVORABLE]->(Pois),
  (Radis)-[:ASSOCIATION_FAVORABLE]->(Epinard),
  (Radis)-[:ASSOCIATION_FAVORABLE]->(Carotte),
  (Radis)-[:ASSOCIATION_FAVORABLE]->(Concombre),
  (Radis)-[:ASSOCIATION_FAVORABLE {effet:'Éloigne l\'altise'}]->(Tomate),
  (Radis)-[:ASSOCIATION_FAVORABLE {effet:'Éloigne l\'altise'}]->(Absinthe),
  (Radis)-[:ASSOCIATION_FAVORABLE {effet:'Donne bon goût'}]->(Capucine),
  (Radis)-[:ASSOCIATION_FAVORABLE {effet:'Donne bon goût'}]->(Cresson),
  (Radis)-[:ASSOCIATION_DEFAVORABLE]->(Haricot),
  (Radis)-[:ASSOCIATION_DEFAVORABLE]->(Chou),
  (Radis)-[:ASSOCIATION_DEFAVORABLE {effet:'Rend piquant'}]->(Cerfeuil),
  (Tomate)-[:ASSOCIATION_FAVORABLE {effet:'Éloigne certains parasites notamment les pucerons'}]->(Calendula),
  (Tomate)-[:ASSOCIATION_FAVORABLE {effet:'Éloigne certains parasites notamment les pucerons'}]->(OeilletInde),
  (Tomate)-[:ASSOCIATION_FAVORABLE {effet:'Éloigne certains parasites notamment les pucerons'}]->(Capucine),
  (Tomate)-[:ASSOCIATION_DEFAVORABLE]->(Fenouil),
  (Tomate)-[:ASSOCIATION_DEFAVORABLE]->(Concombre),
  (Tomate)-[:ASSOCIATION_DEFAVORABLE]->(Celeri),
  (Tomate)-[:ASSOCIATION_DEFAVORABLE]->(Haricot),
  (Tomate)-[:ASSOCIATION_DEFAVORABLE]->(PommeDeTerre),
  (Tomate)-[:ASSOCIATION_DEFAVORABLE]->(Tetragone),
  (Tomate)-[:ASSOCIATION_DEFAVORABLE]->(Chou)













