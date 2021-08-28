using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml;
using System.IO;

namespace FS19_PredSet
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>

    public partial class MainWindow : Window
    {
        public bool settings_stat = false;
        public int selected_button = 0;

        private readonly System.Windows.Threading.DispatcherTimer timer = new System.Windows.Threading.DispatcherTimer();

        public MainWindow()
        {
            InitializeComponent();

            tb_btn_name.Visibility = Visibility.Hidden;
            btn_sel_savegame_fold.Visibility = Visibility.Hidden;
            btn_save.Visibility = Visibility.Hidden;
            lbl_change_btn_name.Visibility = Visibility.Hidden;
            txt_loadstatus.Visibility = Visibility.Hidden;

            settings_button.Background = Brushes.Transparent;
            Text_box_change_state(true);

            panel_credits.Visibility = Visibility.Hidden;
            panel_settings.Visibility = Visibility.Visible;
            buttons_preddef.Visibility = Visibility.Visible;

            txt_savestat.Content = "";
            label_selected.Content = "Current settings";
            get_current_settings();
            Load_button_names();
            Get_savegamepath();

            timer.Interval = TimeSpan.FromSeconds(2);
            timer.Tick += new EventHandler(Timer_Tick_loadstatusVisibility);

        }

        private void Timer_Tick_loadstatusVisibility(object sender, EventArgs e)
        {
            txt_loadstatus.Visibility = Visibility.Hidden;
            timer.Stop();
            
        }

        private void Load_button_names()
        {
            List<Button> list_of_buttons = new List<Button> { btn_1set, btn_2set, btn_3set, btn_4set, btn_5set, btn_6set, btn_7set };

            for (int i = 1; i <= 7; i++)
            {
                if (Properties.Settings.Default["btn" + i.ToString() + "name"].ToString() != "")
                {
                    list_of_buttons[i - 1].Content = Properties.Settings.Default["btn" + i.ToString() + "name"].ToString();
                }
                else
                {
                    list_of_buttons[i - 1].Content = "---";
                }
            }

        }
        private void get_current_settings()
        {
            XmlDocument xmldoc = new XmlDocument();

            xmldoc.Load("C:\\Users\\JAK4GMZ\\Documents\\My Games\\FarmingSimulator2019\\gameSettings.xml");

            XmlNodeList moddir = xmldoc.GetElementsByTagName("modsDirectoryOverride");

            if (moddir[0].Attributes["active"].Value == "true")
            {
                txt_modfoldpath.Content = moddir[0].Attributes["directory"].Value;
                txt_serverpass.Content = xmldoc.GetElementsByTagName("joinGame")[0].Attributes["password"].Value;
                txt_servername.Content = xmldoc.GetElementsByTagName("joinGame")[0].Attributes["serverName"].Value;
                txt_username.Content = xmldoc.GetElementsByTagName("player")[0].Attributes["name"].Value;

            }
            

        }
        private void credits_btn_Click(object sender, RoutedEventArgs e)
        {
            if (settings_stat)
            {
                settings_stat = false;

            }

            btn_sel_savegame_fold.Visibility = Visibility.Hidden;
            btn_save.Visibility = Visibility.Hidden;
            lbl_change_btn_name.Visibility = Visibility.Hidden;

            settings_button.Background = Brushes.Transparent;
            Text_box_change_state(true);
          
            panel_credits.Visibility = Visibility.Visible;
            panel_settings.Visibility = Visibility.Hidden;
            buttons_preddef.Visibility = Visibility.Hidden;

        }
        private void interface_btn_Click(object sender, RoutedEventArgs e)
        {
            if (settings_stat)
            {
                settings_stat = false;
            }


            tb_btn_name.Visibility = Visibility.Hidden;
            btn_sel_savegame_fold.Visibility = Visibility.Hidden;
            btn_save.Visibility = Visibility.Hidden;
            lbl_change_btn_name.Visibility = Visibility.Hidden;

            settings_button.Background = Brushes.Transparent;
            Text_box_change_state(true);
          
            panel_credits.Visibility = Visibility.Hidden;
            panel_settings.Visibility = Visibility.Visible;
            buttons_preddef.Visibility = Visibility.Visible;


        }
        private void settings_btn_Click(object sender, RoutedEventArgs e)
        {
            if (settings_stat)
            {
                settings_stat = false;
                btn_sel_savegame_fold.Visibility = Visibility.Hidden;
                btn_save.Visibility = Visibility.Hidden;
                lbl_change_btn_name.Visibility = Visibility.Hidden;
                tb_btn_name.Visibility = Visibility.Hidden;

                settings_button.Background = Brushes.Transparent;
                Text_box_change_state(true);


            }
            else
            {
                settings_stat = true;
                btn_sel_savegame_fold.Visibility = Visibility.Visible;
                btn_save.Visibility = Visibility.Visible;
                lbl_change_btn_name.Visibility = Visibility.Visible;
                tb_btn_name.Visibility = Visibility.Visible;

                settings_button.Background = settings_button.Background == Brushes.Red ? (SolidColorBrush)(new BrushConverter().ConvertFrom("#FF22222D")) : Brushes.Red;
                //enable textboxes for editing
                Text_box_change_state(false);
            }


            panel_credits.Visibility = Visibility.Hidden;
            panel_settings.Visibility = Visibility.Visible;
            buttons_preddef.Visibility = Visibility.Visible;


        }


        private void btn_close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Get_savegamepath()
        {
            if(Properties.Settings.Default["savegamepath"].ToString() == "")
            {
                if(Directory.Exists(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + "/My Games/FarmingSimulator2019"))
                {
                    savegamepath_txtbox.Text = System.IO.Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "My Games","FarmingSimulator2019");
                    Properties.Settings.Default["savegamepath"] = System.IO.Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "My Games", "FarmingSimulator2019");
                    Properties.Settings.Default.Save();
                }
            }

            savegamepath_txtbox.Text = Properties.Settings.Default["savegamepath"].ToString();
        }
        private void Load_settings_to_textboxes()
        {
            txt_modfoldpath.Content = Properties.Settings.Default["set" + selected_button.ToString() + "modpath"].ToString();
            txt_servername.Content = Properties.Settings.Default["set" + selected_button.ToString() + "servername"].ToString();
            txt_serverpass.Content = Properties.Settings.Default["set" + selected_button.ToString() + "serverpass"].ToString();
            txt_username.Content = Properties.Settings.Default["set" + selected_button.ToString() + "username"].ToString();
        }
        private bool Load_settings_to_xml()
        {

            if (File.Exists(System.IO.Path.Combine(Properties.Settings.Default.savegamepath, "gameSettings.xml")))
            {
                
                XmlDocument xmldoc = new XmlDocument();

                xmldoc.Load(System.IO.Path.Combine(Properties.Settings.Default.savegamepath, "gameSettings.xml"));

                XmlNodeList moddir = xmldoc.GetElementsByTagName("modsDirectoryOverride");

                bool v = Properties.Settings.Default["set" + selected_button.ToString() + "modpath"].ToString() != "";
                if (v)
                {
                    moddir[0].Attributes["active"].Value = "true";
                    moddir[0].Attributes["directory"].Value = Properties.Settings.Default["set" + selected_button.ToString() + "modpath"].ToString();
                }
                xmldoc.GetElementsByTagName("joinGame")[0].Attributes["password"].Value = Properties.Settings.Default["set" + selected_button.ToString() + "serverpass"].ToString();
                xmldoc.GetElementsByTagName("joinGame")[0].Attributes["serverName"].Value = Properties.Settings.Default["set" + selected_button.ToString() + "servername"].ToString();
                xmldoc.GetElementsByTagName("player")[0].Attributes["name"].Value = Properties.Settings.Default["set" + selected_button.ToString() + "username"].ToString();

                xmldoc.Save(System.IO.Path.Combine(Properties.Settings.Default.savegamepath, "gameSettings.xml"));

                return true;
            }

            return false;
            
        }
        private void Text_box_change_state(bool new_state = true)
        {
            tb_btn_name.IsReadOnly = new_state;
            savegamepath_txtbox.IsReadOnly = new_state;
            tb_modfoldpath.IsReadOnly = new_state;
            tb_username.IsReadOnly = new_state;
            tb_servername.IsReadOnly = new_state;
            tb_serverpass.IsReadOnly = new_state;
           

            txt_savestat.Content = "";
            tb_btn_name.Text = "";
            savegamepath_txtbox.IsReadOnly = new_state;

            label_selected.Content = "Current settings";
            txt_savegamepath.Content = Properties.Settings.Default.savegamepath;
            selected_button = 0;
            get_current_settings();

            if (new_state)
            {
                tb_modfoldpath.Visibility = Visibility.Hidden;
                btn_sel_mod_fold.Visibility = Visibility.Hidden;
                tb_username.Visibility = Visibility.Hidden;
                tb_servername.Visibility = Visibility.Hidden;
                tb_serverpass.Visibility = Visibility.Hidden;
                txt_modfoldpath.Visibility = Visibility.Visible;
                txt_username.Visibility = Visibility.Visible;
                txt_servername.Visibility = Visibility.Visible;
                txt_serverpass.Visibility = Visibility.Visible;
                savegamepath_txtbox.Visibility = Visibility.Hidden;
                txt_savegamepath.Visibility = Visibility.Visible;
            }
            else
            {
                tb_modfoldpath.Visibility = Visibility.Visible;
                btn_sel_mod_fold.Visibility = Visibility.Visible;
                tb_username.Visibility = Visibility.Visible;
                tb_servername.Visibility = Visibility.Visible;
                tb_serverpass.Visibility = Visibility.Visible;
                txt_modfoldpath.Visibility = Visibility.Hidden;
                txt_username.Visibility = Visibility.Hidden;
                txt_servername.Visibility = Visibility.Hidden;
                txt_serverpass.Visibility = Visibility.Hidden;
                savegamepath_txtbox.Visibility = Visibility.Visible;
                txt_savegamepath.Visibility = Visibility.Hidden;
            }
        }



        private void btn_sel_savegame_fold_Click(object sender, RoutedEventArgs e)
        {
            // Create a "Save As" dialog for selecting a directory (HACK)
            Microsoft.Win32.SaveFileDialog dialog = new Microsoft.Win32.SaveFileDialog();
            if (Directory.Exists(Properties.Settings.Default.savegamepath))
            {
                dialog.InitialDirectory = Properties.Settings.Default.savegamepath;
            }
            else if (Directory.Exists(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments))) {
                dialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            }
            else {
                dialog.InitialDirectory = Directory.GetCurrentDirectory();
            }

            //dialog.InitialDirectory = savegamepath_txtbox.Text; // Use current value for initial dir
            dialog.Title = "Select a Directory"; // instead of default "Save As"
            dialog.Filter = "Directory|*.directory"; // Prevents displaying files
            dialog.FileName = "select"; // Filename will then be "select.this.directory"
            if (dialog.ShowDialog() == true)
            {
                string path = dialog.FileName;
                // Remove fake filename from resulting path
                path = path.Replace("\\select", "");
                path = path.Replace(".directory", "");
                // If user has changed the filename, create the new directory
                //if (!System.IO.Directory.Exists(path))
                //{
                //    System.IO.Directory.CreateDirectory(path);
                //}
                // Our final value is in path
                savegamepath_txtbox.Text = path;
            }

        }

        private void btn_sel_mod_fold_Click(object sender, RoutedEventArgs e)
        {
            string initdir;
            if (Directory.Exists(tb_modfoldpath.Text))
            {
                initdir = tb_modfoldpath.Text;
            }
            else if (Directory.Exists(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)))
            {
                initdir = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            }
            else
            {
                initdir = Directory.GetCurrentDirectory();
            }
            // Create a "Save As" dialog for selecting a directory (HACK)
            Microsoft.Win32.SaveFileDialog dialog = new Microsoft.Win32.SaveFileDialog
            {
                InitialDirectory = initdir, // Use current value for initial dir
                Title = "Select a Directory", // instead of default "Save As"
                Filter = "Directory|*.directory", // Prevents displaying files
                FileName = "select" // Filename will then be "select.this.directory"
            };
            if (dialog.ShowDialog() == true)
            {
                string path = dialog.FileName;
                // Remove fake filename from resulting path
                path = path.Replace("\\select", "");
                path = path.Replace(".directory", "");
                // If user has changed the filename, create the new directory
                //if (!System.IO.Directory.Exists(path))
                //{
                //    System.IO.Directory.CreateDirectory(path);
                //}
                // Our final value is in path
                tb_modfoldpath.Text = path;
            }

        }

        private void Titlebar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void btn_save_Click(object sender, RoutedEventArgs e)
        {

            List<Button> list_of_buttons = new List<Button> { btn_1set, btn_2set, btn_3set, btn_4set, btn_5set, btn_6set, btn_7set };

            if (selected_button > 0)
            {
                if (tb_btn_name.Text != "")
                {
                    
                    list_of_buttons[selected_button - 1].Content = tb_btn_name.Text;
                    label_selected.Content = tb_btn_name.Text;
                    Properties.Settings.Default["btn" + selected_button.ToString() + "name"] = tb_btn_name.Text;
                }

                Properties.Settings.Default["set" + selected_button.ToString() + "modpath"] = tb_modfoldpath.Text;
                Properties.Settings.Default["set" + selected_button.ToString() + "username"] = tb_username.Text;
                Properties.Settings.Default["set" + selected_button.ToString() + "servername"] = tb_servername.Text;
                Properties.Settings.Default["set" + selected_button.ToString() + "serverpass"] = tb_serverpass.Text;

                if (Properties.Settings.Default.savegamepath != savegamepath_txtbox.Text)
                {
                    Properties.Settings.Default.savegamepath = savegamepath_txtbox.Text;
                }
                Properties.Settings.Default.Save();
                txt_savestat.Content = "SAVED!";

            }
            else
            {
                if (Properties.Settings.Default.savegamepath != savegamepath_txtbox.Text)
                {
                    Properties.Settings.Default.savegamepath = savegamepath_txtbox.Text;
                    Properties.Settings.Default.Save();
                    txt_savestat.Content = "Folder Saved";
                }
                else
                {
                    txt_savestat.Content = "SELECT BUTTON!";
                }
            }


        }

        private void btn_1set_Click(object sender, RoutedEventArgs e)
        {
            selected_button = 1;
            label_selected.Content = btn_1set.Content;

            Load_settings_to_textboxes();

            if (!settings_stat)
            {
                if (Load_settings_to_xml())
                {
                    txt_loadstatus.Visibility = Visibility.Visible;
                    timer.Start();
                }
            }

        }

        private void btn_2set_Click(object sender, RoutedEventArgs e)
        {
            selected_button = 2;
            label_selected.Content = btn_2set.Content;

            Load_settings_to_textboxes();

            if (!settings_stat)
            {
                if (Load_settings_to_xml())
                {
                    txt_loadstatus.Visibility = Visibility.Visible;
                    timer.Start();
                }
            }

        }
        private void btn_3set_Click(object sender, RoutedEventArgs e)
        {
            selected_button = 3;
            label_selected.Content = btn_3set.Content;

            Load_settings_to_textboxes();

            if (!settings_stat)
            {
                if (Load_settings_to_xml())
                {
                    txt_loadstatus.Visibility = Visibility.Visible;
                    timer.Start();
                }
            }
        }

        private void btn_4set_Click(object sender, RoutedEventArgs e)
        {
            selected_button = 4;
            label_selected.Content = btn_4set.Content;

            Load_settings_to_textboxes();

            if (!settings_stat)
            {
                if (Load_settings_to_xml())
                {
                    txt_loadstatus.Visibility = Visibility.Visible;
                    timer.Start();
                }
            }
        }
        private void btn_5set_Click(object sender, RoutedEventArgs e)
        {
            selected_button = 5;
            label_selected.Content = btn_5set.Content;

            Load_settings_to_textboxes();

            if (!settings_stat)
            {
                if (Load_settings_to_xml())
                {
                    txt_loadstatus.Visibility = Visibility.Visible;
                    timer.Start();
                }
            }
        }
        private void btn_6set_Click(object sender, RoutedEventArgs e)
        {
            selected_button = 6;
            label_selected.Content = btn_6set.Content;

            Load_settings_to_textboxes();

            if (!settings_stat)
            {
                if (Load_settings_to_xml())
                {
                    txt_loadstatus.Visibility = Visibility.Visible;
                    timer.Start();
                }
            }
        }

        private void btn_7set_Click(object sender, RoutedEventArgs e)
        {
            selected_button = 7;
            label_selected.Content = btn_7set.Content;

            Load_settings_to_textboxes();

            if (!settings_stat)
            {
                if (Load_settings_to_xml())
                {
                    txt_loadstatus.Visibility = Visibility.Visible;
                    timer.Start();
                }
            }
        }

        private void Btn_launch_Click(object sender, RoutedEventArgs e)
        {
            if(File.Exists(@"C:\Program Files (x86)\Steam\steam.exe"))
            {
                System.Diagnostics.Process.Start(@"C:\Program Files (x86)\Steam\steam.exe", "steam://rungameid/787860");
            }
            else
            {
                _ = MessageBox.Show("Runtime Error");
            }
        }

        private void Btn_minimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }
    }
}
