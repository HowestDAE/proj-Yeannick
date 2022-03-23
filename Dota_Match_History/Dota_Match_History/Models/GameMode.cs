using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dota_Match_History.Repositories;
using Newtonsoft.Json;

namespace Dota_Match_History.Models
{
    public class GameModeList
    {
        [JsonConverter((typeof(GameModesConverter)))]
        public List<GameMode> gameModes;
    }
    public class GameMode
    {
        [JsonProperty(PropertyName = "id")]
        public int id { get; set; }
        [JsonProperty(PropertyName = "name")]
        public string name { get; set; }

        public override string ToString()
        {
            return $"{name}";
        }

    }
}
