using System;

namespace SpinnerCustomObject.AttributeCustom
{
    public class TextoAttribute : Attribute
    {
        public string ID { get; }
        public TextoAttribute()
        {
            ID = "ID";
        }
    }
}