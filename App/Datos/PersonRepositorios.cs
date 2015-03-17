using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using App.Modelo;
namespace App.Datos

{
    public class PersonRepositorios
    {

        static List<Person> data = new List<Person>();

        public void addPerson(Person p) {
            data.Add(p);
                    
        }
        public IEnumerable<Person> getBills()
        {
           
            return data;
        }
    }
}