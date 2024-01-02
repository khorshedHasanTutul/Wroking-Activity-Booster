using WindowsInput;
using WindowsInput.Native;
using static System.Runtime.CompilerServices.RuntimeHelpers;

namespace HubstafActivityPerform
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            PressKeyRepeatedly(VirtualKeyCode.CONTROL, 10, TimeSpan.FromMilliseconds(100));
        }

        static void PressKeyRepeatedly(VirtualKeyCode key, int count, TimeSpan delay)
        {
            InputSimulator simulator = new InputSimulator();
            while (true)
            {
                    simulator.Keyboard.KeyDown(key);
                    simulator.Keyboard.KeyUp(key);
                    Thread.Sleep(delay);
            }    
        }
    }

}
