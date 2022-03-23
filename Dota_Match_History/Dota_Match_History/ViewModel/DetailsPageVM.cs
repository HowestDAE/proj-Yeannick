using Dota_Match_History.Models;
using Dota_Match_History.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight;


namespace Dota_Match_History.ViewModel
{
    public class DetailsPageVM : ViewModelBase
    {
        private long _matchId;

        public long MatchId
        {
            get { return _matchId; }
            set { _matchId = value; }
        }
        public Match CurrentMatch { get; set; }

        public async Task LoadMatch()
        {
            IRepository currentRepository = RepositoryManager.GetInstance().CurrentRepository;
            CurrentMatch = await currentRepository.GetMatch(MatchId);
            RaisePropertyChanged("CurrentMatch");
        }
    }
}
