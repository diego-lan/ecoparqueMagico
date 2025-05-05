object dragon {
  var temperatura = 200
  var edad = 90
  method esDiurno() = true
  method alimentar() {temperatura = temperatura + 20}
  method entrenarSiPuede() {
    if (temperatura > 100) {
      temperatura = temperatura - 40
    }
  }
  method dormir() {temperatura = 200}
  method esJoven() {edad < 100}
  method puedeSerCuidadoPor_(unEntrenador) {
    return unEntrenador.resistenteAAltasTemperaturas() &&
            unEntrenador.turnoManiana()
  }
}

object unicornio {
  var edad = 30
  var poderMagico = 3
  var estaFeliz = false

  method esDiurno() = true
  method alimentar() {poderMagico += 1}
  method entrenarSiPuede() {
    if (poderMagico > 5) {
      estaFeliz = true
    }
  }
  method dormir() {estaFeliz = not estaFeliz}
  method esJoven() {edad < 50}
  method puedeSerCuidadoPor_(unEntrenador) = true
}

object sirena {
  var edad = 60 
  var habilidadAcuatica = 40
  method esDiurno() = false
  method alimentar() {habilidadAcuatica *= 1.5}
  method nadar(metros) {
    habilidadAcuatica -= metros
  }

  method practicarParaLaBatalla() {
    habilidadAcuatica -= 20
  }

  method entrenarSiPuede(){
    if (habilidadAcuatica > 0) {
    self.nadar(habilidadAcuatica/2)
    self.practicarParaLaBatalla()
    }
  }
  method dormir() {
    habilidadAcuatica = 40
  }
  method esJoven() {
    return edad < 45
  }
  method puedeSerCuidadoPor_(unEntrenador) = unEntrenador.sabeNadar()
}

object fenix {
  var edad = 180
  var plumajeReluciente = false

  method energia() {
    if (plumajeReluciente) {
      return edad
    } else {
      return edad / 2
    }
  }
  
  method esPichon() {return edad < 5}
  method alimentar() {
    if (self.esPichon()) {
      edad += 1
    } else {
      plumajeReluciente = true
    }
  }

  method dormir() {
    if (edad > 200) {
      edad = 1
    }
  }
  method entrenar() {
    plumajeReluciente = false
    edad *= 1.1
  }

  method esJoven() {edad < 150}
  method puedeSerCuidadoPor_(unEntrenador) = unEntrenador.resistenteAAltasTemperaturas() 
  
}

object gargola {
  var edad = 15
  var formaDeEstatua = true
  method formaDeEstatua() = formaDeEstatua
  method cambiarForma() {
    formaDeEstatua = not formaDeEstatua
  }

  method alimentar() {}
  method esDiurno() = false
  method entrenar() {
    edad -= 1
    formaDeEstatua = true 
  }
  method dormir() {
    edad += 5
  }
  method esjoven() = true
  method puedeSerCuidadoPor_(unEntrenador) {return unEntrenador.turnoManiana() &&
                                           not formaDeEstatua}
}

