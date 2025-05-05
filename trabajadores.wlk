import example.*

object rodrigo {
  var turnoManiana = true
  var aniosDeExperiencia = 0
  
  method turnoManiana() = turnoManiana
  method cambiarTurno() {
    turnoManiana = not turnoManiana
  }
  method sabeNadar() = true
  method resistenteAAltasTemperaturas() = false
  
}

object laura {
  var turnoManiana = false
  var aniosDeExperiencia = 2
  method turnoManiana() = turnoManiana
  method cambiarTurno() {
    turnoManiana = not turnoManiana
  }
  method resistenteAAltasTemperaturas() = true
  method sabeNadar() = false
  method puedeEnseñar() = false
}

object german {
  var turnoManiana = true
  var aniosDeExperiencia = 15
  method turnoManiana() = turnoManiana
  method cambiarTurno() {
    turnoManiana = not turnoManiana
  }
  method resistenteAAltasTemperaturas() = true
  method sabeNadar() = true
  method puedeEnseñar() = true
}

object jimena {
  var turnoManiana = false
  var aniosDeExperiencia = 8
  method turnoManiana() = turnoManiana
  method cambiarTurno() {
    turnoManiana = not turnoManiana
  }
  method tieneTrajeIgnifugo() = true
  method resistenteAAltasTemperaturas() = self.tieneTrajeIgnifugo()
  method sabeNadar() = true
  method puedeEnseñar() = false
}