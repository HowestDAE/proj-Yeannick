using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dota_Match_History.Models;

namespace Dota_Match_History.Repositories
{
    public interface IRepository
    {
        // GameModes 

        Task<List<GameMode>> GetGameModes();

        Task<List<GameMode>> GetGameModes(List<MatchOverview> matches);
        // Matches
        Task<Match> GetMatch(long matchId);

        Task<List<MatchOverview>> GetMatchOverviews();
        Task<List<MatchOverview>> GetMatchesByGameMode(GameMode selectedGameMode);

        // heroes

        Task<List<Hero>> GetHeroes();
        Task<Hero> GetHero(int heroId);


    }
}
