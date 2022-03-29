using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace Dota_Match_History.Models
{
    public class Hero
    {
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("name")]
        public string Name { get; set; }
        public string HeroImage
        {
            get
            {
                int count ="npc_data_hero_".Length;
                string HeroUrlName = Name.Remove(0, count).ToLower();
                return $"https://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/{HeroUrlName}_full.png";
            }
        }
        public string HeroImageLowRes
        {
            get
            {
                int count = "npc_data_hero_".Length;
                string HeroUrlName = Name.Remove(0, count).ToLower();
                return $"https://steamcdn-a.akamaihd.net/apps/dota2/images/heroes/{HeroUrlName}_sb.png";
            }
        }
        public string HeroName
        {
            get
            {
                int count= "npc_dota_hero_".Length;
                string HeroName = Name.Remove(0, count).ToUpper();
                HeroName = HeroName.Replace('_', ' ');
                return HeroName;
            }
        }

        public override string ToString()
        {
            return HeroName;
        }
    }
}

