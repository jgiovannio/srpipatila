Feature:
  Como gamer
  Quiero elegir una jugada
  Para intentar ganar

Scenario: el jugador debe elegir su jugada
    Given que abri la aplicacion
    And introduzco en el campo "j1" el nombre de "Sebastian"
    And selecciono "Facil"
    And selecciono "piedra"
    Then el "resultado" debe ser "Ganas"
