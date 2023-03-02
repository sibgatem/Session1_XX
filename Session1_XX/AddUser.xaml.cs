using Session1_XX.DataSet1TableAdapters;
using System;
using System.Windows;

namespace Session1_XX
{
    public partial class AddUser : Window
    {
        private DataSet1 dataSet;
        private OfficesTableAdapter officeTableAdapter;
        private UsersTableAdapter usersTableAdapter;
        public AddUser()
        {
            InitializeComponent();
            dataSet = new DataSet1();
            officeTableAdapter = new OfficesTableAdapter();
            usersTableAdapter = new UsersTableAdapter();
            officeTableAdapter.Fill(dataSet.Offices);
            usersTableAdapter.Fill(dataSet.Users);
            CbOffices.ItemsSource = dataSet.Offices.DefaultView;
            CbOffices.DisplayMemberPath = "Title";
            CbOffices.SelectedValuePath = "ID";
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            AdminWindow adminWindow = new AdminWindow();
            adminWindow.Show();
            this.Close();
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            if (TxtEmail.Text.Equals("") && TxtFirst.Text.Equals("") && TxtLast.Text.Equals("") &&
                DpBirthDay.Text.Equals("") && TxtPassword.Text.Equals(""))
            {
                MessageBox.Show("Заполнены не все поля!");
            }
            else
            {
               //usersTableAdapter.InsertQuery(TxtEmail.Text, TxtFirst.Text, TxtLast.Text, (int)CbOffices.SelectedValue,(DateTime?)DpBirthDay.SelectedDate);
            }
        }
    }
}
