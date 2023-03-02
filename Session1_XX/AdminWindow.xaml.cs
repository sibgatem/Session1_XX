using Session1_XX.DataSet1TableAdapters;
using System.Data;
using System.Windows;

namespace Session1_XX
{

    public partial class AdminWindow : Window
    {
        private DataSet1 dataSet;
        private UsersTableAdapter usersTableAdapter;
        private UserViewTableAdapter userView;
        private OfficesTableAdapter officesTableAdapter;

        public AdminWindow()
        {
            InitializeComponent();
            dataSet = new DataSet1();
            usersTableAdapter = new UsersTableAdapter();
            userView = new UserViewTableAdapter();
            officesTableAdapter = new OfficesTableAdapter();
            officesTableAdapter.Fill(dataSet.Offices);
            usersTableAdapter.Fill(dataSet.Users);
            userView.Fill(dataSet.UserView);
            DgUsers.ItemsSource = dataSet.UserView.DefaultView;
            DgUsers.SelectedValuePath = "ID";
            CbOffices.ItemsSource = dataSet.Offices.DefaultView;
            CbOffices.DisplayMemberPath = "Title";
            CbOffices.SelectedValuePath = "Title";
        }

        private void DgUsers_LoadingRow(object sender, System.Windows.Controls.DataGridRowEventArgs e)
        {
            DgUsers.Columns[0].Visibility = Visibility.Hidden;
            DgUsers.Columns[1].Visibility = Visibility.Hidden;
            DgUsers.Columns[2].Visibility = Visibility.Hidden;
        }

        private void BtnEnable_Click(object sender, RoutedEventArgs e)
        {
            if (DgUsers.SelectedItem != null)
            {
                usersTableAdapter.UpdateActive((int)DgUsers.SelectedValue);
                usersTableAdapter.Fill(dataSet.Users);
            }
            else
            {
                MessageBox.Show("User not selected!");
            }
        }

        private void CbOffices_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            DgUsers.ItemsSource = userView.GetDataBy((string)CbOffices.SelectedValue);
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            AddUser addUser = new AddUser();
            addUser.Show();
            this.Close();
        }

        private void BtnChangeRole_Click(object sender, RoutedEventArgs e)
        {
            if (DgUsers.SelectedItem != null)
            {
                EditUser editUser = new EditUser((DataRowView)DgUsers.SelectedItem);
                editUser.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("User not selected!");
            }
        }

        private void MenuItem_Click_1(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }
    }
}
