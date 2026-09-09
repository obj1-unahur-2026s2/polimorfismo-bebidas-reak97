object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}

object tito {
  var bebidaActual= null
  var rendimiento= 0
  method consumir(dosis, bebida) {
    bebidaActual= bebida
    rendimiento= bebida.rendimiento(dosis)
  }
  method velocidad() {
    return (rendimiento * 490)/self.peso()
  }
  method peso() {
    return 70
  }
}

object whisky {
  method rendimiento(dosis) {
    return 0.9 ** dosis
  }
}

object terere {
  method rendimiento(dosis) {
    return (0.1 * dosis).max(1)
  }
}

object cianuro {
  method rendimiento(dosis) {
    return 0
  }
}