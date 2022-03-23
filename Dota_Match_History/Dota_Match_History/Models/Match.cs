using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dota_Match_History.Repositories;
using Newtonsoft.Json;


namespace Dota_Match_History.Models
{
    public class Match
    {
        public async Task LoadHeroes()
        {
            IRepository repository = RepositoryManager.GetInstance().CurrentRepository;
            List<Task<Hero>> otherTask = new List<Task<Hero>>();
            int AmountOfHeroes = 10;
            for (int i = 0; i < AmountOfHeroes; i++)
            {
                otherTask.Add(repository.GetHero(players[i].hero_id));
            }

            await Task.WhenAll(otherTask);

            for (int i = 0; i < otherTask.Count; i++)
            {
                players[i].PlayerHero = otherTask[i].Result;
            }
        }
       
        [JsonProperty(PropertyName = "match_id")]
        public long match_id { get; set; }

        [JsonProperty(PropertyName ="dire_score")]
        public int dire_score { get; set; }

        [JsonProperty(PropertyName = "duration")]

        public int duration { get; set; }

        [JsonProperty(PropertyName = "game_mode")]
        public int game_mode { get; set; }

        [JsonProperty(PropertyName = "leagueid")]
        public int leagueid { get; set; }

        [JsonProperty(PropertyName = "radiant_score")]
        public int radiant_score { get; set; }

        [JsonProperty(PropertyName = "radiant_win")]
        public bool radiant_win { get; set; }

        [JsonProperty(PropertyName = "start_time")]
        public int start_time { get; set; }

        [JsonProperty(PropertyName = "players")]
        public Player[] players { get; set; }

    }
    public class Player
    {
       

        [JsonProperty(PropertyName = "player_slot")]

        public int player_slot { get; set; }

        [JsonProperty(PropertyName = "hero_id")]

        public int hero_id { get; set; }
        public Hero PlayerHero { get; set; }

        [JsonProperty(PropertyName = "assists")]

        public int assists { get; set; }

        [JsonProperty(PropertyName = "deaths")]

        public int deaths { get; set; }

        [JsonProperty(PropertyName = "kills")]

        public int kills { get; set; }

        [JsonProperty(PropertyName = "denies")]

        public int denies { get; set; }

        [JsonProperty(PropertyName = "hero_damage")]

        public int hero_damage { get; set; }

        [JsonProperty(PropertyName = "level")]

        public int level { get; set; }

        [JsonProperty(PropertyName = "tower_damage")]

        public int tower_damage { get; set; }

        [JsonProperty(PropertyName = "isRadiant")]

        public bool isRadiant { get; set; }

        [JsonProperty(PropertyName = "total_gold")]

        public int total_gold { get; set; }


    }
}
