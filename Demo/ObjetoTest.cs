using SpinnerCustomObject.AttributeCustom;

namespace Demo
{
    class ObjetoTest
    {
        [Texto] // Muy importante  el atributo "Texto"
        public string Dato1 { get; set; } // Esta propiedad se usara mostrar en el spinner
        public string Dato2 { get; set; }
        public string Dato3 { get; set; }
        public string Dato4 { get; set; }
        public string Dato5 { get; set; }
    }
}