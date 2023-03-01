using Session1_XX.DataSet1TableAdapters;
using System.Windows;

namespace Session1_XX
{

    public partial class MainWindow : Window
    {
        DataSet1 dataset;
        UsersTableAdapter usersTA;
        QueriesTableAdapter authTA;
        public MainWindow()
        {
            InitializeComponent();
            usersTA = new UsersTableAdapter();
            authTA = new QueriesTableAdapter();
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            if (AuthRole(TxtUsername.Text, TxtPassword.Password.ToString())>0)
            {
                
            }
        }
        private int? AuthRole (string login, string password)
        {
            int? role = authTA.Auth(login, password);
            return role;
        }


    }
}
