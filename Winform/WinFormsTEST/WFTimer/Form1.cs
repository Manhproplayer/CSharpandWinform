﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFTimer
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            timer1.Enabled = !timer1.Enabled;
            button1.Text = button1.Text == "Start" ? "Stop" : "Start";
        }
        int i = 30;
        private void timer1_Tick(object sender, EventArgs e)
        {
            i--;
            label1.Text = i.ToString();
            if(i==0)
            {
                timer1.Stop();
                MessageBox.Show("Het gio");
            }    
        }
    }
}
