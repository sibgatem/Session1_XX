using Session1_XX.DataSet1TableAdapters;
using System.Data;
using System.Windows;

namespace Session1_XX
{
    public partial class EditUser : Window
    {
        DataSet1 dataSet;
        UsersTableAdapter usersTableAdapter;
        private OfficesTableAdapter officesTableAdapter;
        int? idUser;
        public EditUser(DataRowView dataGridRow)
        {
            InitializeComponent();
            dataSet = new DataSet1();
            usersTableAdapter = new UsersTableAdapter();
            officesTableAdapter = new OfficesTableAdapter();
            officesTableAdapter.Fill(dataSet.Offices);
            usersTableAdapter.Fill(dataSet.Users);
            CbOffices.ItemsSource = dataSet.Offices.DefaultView;
            CbOffices.DisplayMemberPath = "Title";
            CbOffices.SelectedValuePath = "ID";
            TxtEmail.Text = dataGridRow.Row.Field<string>("Email Address");
            TxtFirst.Text = dataGridRow.Row.Field<string>("Name");
            TxtLast.Text = dataGridRow.Row.Field<string>("Last Name");
            CbOffices.SelectedValue = dataGridRow.Row.Field<int>("OfficeID");
            idUser = dataGridRow.Row.Field<int>("ID");
        }

        private void BtnApply_Click(object sender, RoutedEventArgs e)
        {
            if (CheckUser.IsChecked == true)
            {
                usersTableAdapter.UpdateRole((int?)2, idUser);
                AdminWindow adminWindow = new AdminWindow();
                adminWindow.Show();
                this.Close();
            }
            else
            {
                usersTableAdapter.UpdateRole((int?)1, idUser);
                AdminWindow adminWindow = new AdminWindow();
                adminWindow.Show();
                this.Close();
            }
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            AdminWindow adminWindow = new AdminWindow();
            adminWindow.Show();
            this.Close();
        }
    }
}
