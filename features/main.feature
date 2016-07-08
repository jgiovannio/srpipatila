Feature:
  Como gamer
  Quiero iniciar el juego
  Para ver el titulo, la explicacion y el boton start

Scenario: el titulo del juego debe ser: Señor Pipatila
  Given que abri la aplicacion
  Then debo ver el "Señor Pipatila"

Scenario: debo ver el texto: Introduce tu nombre
  Given que abri la aplicacion
  Then debo ver el "Introduce tu nombre"


Scenario: el titulo del juego debe ser: Señor Pipatila
    Given que abri la aplicacion
    And introduzco en el campo "j1" el nombre de "Sebastian"
    And iniciar el juego
    Then debo ver el "Sebastian VS Sr Pipatila"
