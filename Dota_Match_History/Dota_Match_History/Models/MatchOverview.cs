using Dota_Match_History.Repositories;
using GalaSoft.MvvmLight;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dota_Match_History.Models
{
    public class MatchOverview: ObservableObject
    {
        [JsonProperty("match_id")]
        public long match_id { get; set; }
        [JsonProperty("radiant_win")]
        public bool radiant_win { get; set; }

        [JsonProperty("start_time")]
        public int start_time { get; set; }

        [JsonProperty("duration")]
        public int duration { get; set; }

        [JsonProperty("game_mode")]
        public int game_mode { get; set; }

        [JsonProperty("radiant_team")]
        public string radiant_team { get; set; }

        [JsonProperty("dire_team")]
        public string dire_team { get; set; }

        public List<Hero> RadiantTeamHeroes { get; set; } = new List<Hero>();
        public List<Hero> DireTeamHeroes { get; set; } = new List<Hero>();

        public async Task LoadHeroes()
        {
            await Task.Delay(10);

            IRepository currentRepository = RepositoryManager.GetInstance().CurrentRepository;
            List<Task<Hero>> otherTask = new List<Task<Hero>>();

            string[] radiantHeroIds = radiant_team.Split(',');
            string[] direHeroIds = dire_team.Split(',');

            RadiantTeamHeroes.Clear();
            DireTeamHeroes.Clear();

            foreach (string radiantId in radiantHeroIds)
            {
                otherTask.Add(currentRepository.GetHero(int.Parse(radiantId)));
            }
            foreach (string direId in direHeroIds)
            {
                otherTask.Add(currentRepository.GetHero(int.Parse(direId)));
            }

            await Task.WhenAll(otherTask);

            for (int i = 0; i < 5; i++)
            {
                RadiantTeamHeroes.Add(otherTask[i].Result);
            }
            for (int i = 0; i < 5; i++)
            {
                DireTeamHeroes.Add(otherTask[i].Result);
            }

            Console.WriteLine("All Heroes are Loaded for Match " + this);

            RaisePropertyChanged("DireTeamHeroes");
            RaisePropertyChanged("RadiantTeamHeroes");
        }

        public override string ToString()
        {
            return $"Match id :  {match_id} duration :{duration}"; 
        }




    }
}
