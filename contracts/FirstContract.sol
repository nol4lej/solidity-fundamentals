// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract MiPrimerContrato {
    ////////////////////////////////////
    /// Storage: todas las variables ///
    /// fuera de los metodos         ///
    ////////////////////////////////////

    uint256 edad = 28;

    // FUNCIONES
    // Definir visibilidad: public, private, internal, external
    
    // Setter
    function actualizarEdad(uint256 nuevaEdad) public {
        edad = nuevaEdad;
    }

    // Getter
    function leerEdad() public view returns(uint256){
        return edad;
    }

    // Al añadir public, se crea un Getter automaticamente.
    // El objetivo es que sea consumido por fuera del contrato.
    uint256 public mes = 9;

    // *Un metodo view paga gas cuando se llama desde un metodo setter. EJEMPLO:
    uint256 edadSinInicializar;
    function cambiarEdad() public {
        edadSinInicializar = leerEdad();
    }

}