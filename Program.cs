using IWshRuntimeLibrary;

namespace HubstafActivityPerform
{
    internal static class Program
    {
        [STAThread]
        static void Main()
        {
            string startupFolderPath = Environment.GetFolderPath(Environment.SpecialFolder.Startup);
            string shortcutPath = Path.Combine(startupFolderPath, "HubStaffActivity.lnk");

            if (!System.IO.File.Exists(shortcutPath))
            {
                CreateShortcut(shortcutPath);
            }

            ApplicationConfiguration.Initialize();
            Application.Run(new Form1());
        }

        private static void CreateShortcut(string shortcutPath)
        {
            WshShell shell = new WshShell();
            IWshShortcut shortcut = (IWshShortcut)shell.CreateShortcut(shortcutPath);
            shortcut.TargetPath = Application.ExecutablePath;
            shortcut.Description = "HubStaff Activity Perform Like Bengal Tiger";
            shortcut.WorkingDirectory = Application.StartupPath;
            shortcut.Save();
        }
    }
}