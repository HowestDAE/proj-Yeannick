using Dota_Match_History.View;
using Dota_Match_History.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.CommandWpf;
using System.Windows.Controls;




namespace Dota_Match_History.ViewModel
{
    public class MainViewModel : ViewModelBase
    {

        public MainViewModel()
        {
            CurrentPage = MainPage;
        }
        public string CommandText
        {
            get
            {
                if (CurrentPage is OverviewPage)
                {
                    return "SHOW MATCH";
                }
                else
                {
                    return "GO BACK";
                }
            }
        }
        private OverviewPage _oveviewPage = new OverviewPage();

        public OverviewPage MainPage
        {
            get { return _oveviewPage; }
            set { _oveviewPage = value; }
        }

        private DetailsPage _detailsPage = new DetailsPage();

        public DetailsPage DetailsPage
        {
            get { return _detailsPage; }
            set { _detailsPage = value; }
        }

        private Page _currentPage;
        public Page CurrentPage { get { return _currentPage; } set { _currentPage = value; RaisePropertyChanged("CurrentPage"); } }

        private RelayCommand _switchPageCommand;

        public RelayCommand SwitchPageCommand
        {
            get
            {
                if(_switchPageCommand == null)
                {
                    _switchPageCommand = new RelayCommand(SwitchPage);
                }
                return _switchPageCommand;
            }
        }

        private async void SwitchPage()
        {
            if (CurrentPage is OverviewPage)
            {
                MatchOverview matchOverview = (MainPage.DataContext as OverviewPageVM).SelectedMatchOverview;

                if (matchOverview == null ) return;

                CurrentPage = DetailsPage;

                (CurrentPage.DataContext as DetailsPageVM).MatchId = matchOverview.match_id;
                await (CurrentPage.DataContext as DetailsPageVM).LoadMatch();
            }
            else
            {
                CurrentPage = MainPage;
            }
            RaisePropertyChanged("CommandText");
        }

    }
}
