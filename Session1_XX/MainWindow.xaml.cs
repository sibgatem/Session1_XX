using Session1_XX.DataSet1TableAdapters;
using System.Windows;

namespace Session1_XX
{

    public partial class MainWindow : Window
    {
        DataSet1 dataset;
        private UsersTableAdapter usersTA;
        private QueriesTableAdapter authTA;
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
                if (AuthRole(TxtUsername.Text, TxtPassword.Password.ToString()) ==1)
                {
                    AdminWindow adminWindow = new AdminWindow();
                    adminWindow.Show();
                }
                this.Close();
            }
            else
            {
                MessageBox.Show("Пользователь не найден!");
            }
        }

        private int? AuthRole(string login, string password)
        {
            int? role = authTA.UserRole((int)authTA.user_login(login, password));
            return role;
        }


    }
}
