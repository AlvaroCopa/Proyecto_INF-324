using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Datos;

namespace Proyecto
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                openFileDialog1.Filter = "Archivos JPG| *.jpg|Otros archivos|*.*";
                openFileDialog1.ShowDialog();
                Bitmap b = new Bitmap(openFileDialog1.FileName);
                pictureBox1.Image = b;
                pictureBox2.Image = b;
            }catch(Exception er)
            {
                Console.WriteLine(er.Message);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Cursor.Current = Cursors.WaitCursor;
            try
            {
                string con = "select c.R, c.G, c.B from Capa ca, Color c where ca.Id = 1 and ca.Id = c.IdCapa";
                DataSet data = new DataSet();
                data = Dato.consulta(con);
                string cadena = "";
                foreach (DataRow dr in data.Tables[0].Rows)
                {
                    cadena = cadena + dr[0].ToString() + " " + dr[1].ToString() + " " + dr[2].ToString()+ "\n";
                    procesa(Int32.Parse(dr[0].ToString()), Int32.Parse(dr[1].ToString()), Int32.Parse(dr[2].ToString()),Color.Aqua);
                }
            }
            catch(Exception er)
            {
                MessageBox.Show("Ha Ocurrido un Error " + er.Message);
            }
            Cursor.Current = Cursors.Default;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Cursor.Current = Cursors.WaitCursor;
            try
            {
                string con = "select c.R, c.G, c.B from Capa ca, Color c where ca.Id = 3 and ca.Id = c.IdCapa";
                DataSet data = new DataSet();
                data = Dato.consulta(con);
                string cadena = "";
                foreach (DataRow dr in data.Tables[0].Rows)
                {
                    cadena = cadena + dr[0].ToString() + " " + dr[1].ToString() + " " + dr[2].ToString() + "\n";
                    procesa(Int32.Parse(dr[0].ToString()), Int32.Parse(dr[1].ToString()), Int32.Parse(dr[2].ToString()), Color.BlueViolet);
                }
            }
            catch (Exception er)
            {
                MessageBox.Show("Ha Ocurrido un Error " + er.Message);
            }
            Cursor.Current = Cursors.Default;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Cursor.Current = Cursors.WaitCursor;
            try
            {
                string con = "select c.R, c.G, c.B from Capa ca, Color c where ca.Id = 4 and ca.Id = c.IdCapa";
                DataSet data = new DataSet();
                data = Dato.consulta(con);
                string cadena = "";
                foreach (DataRow dr in data.Tables[0].Rows)
                {
                    cadena = cadena + dr[0].ToString() + " " + dr[1].ToString() + " " + dr[2].ToString() + "\n";
                    procesa(Int32.Parse(dr[0].ToString()), Int32.Parse(dr[1].ToString()), Int32.Parse(dr[2].ToString()), Color.GreenYellow);
                }
            }
            catch (Exception er)
            {
                MessageBox.Show("Ha Ocurrido un Error " + er.Message);
            }
            Cursor.Current = Cursors.Default;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Cursor.Current = Cursors.WaitCursor;
            try
            {
                string con = "select c.R, c.G, c.B from Capa ca, Color c where ca.Id = 7 and ca.Id = c.IdCapa";
                DataSet data = new DataSet();
                data = Dato.consulta(con);
                string cadena = "";
                foreach (DataRow dr in data.Tables[0].Rows)
                {
                    cadena = cadena + dr[0].ToString() + " " + dr[1].ToString() + " " + dr[2].ToString() + "\n";
                    procesa(Int32.Parse(dr[0].ToString()), Int32.Parse(dr[1].ToString()), Int32.Parse(dr[2].ToString()), Color.Black);
                }
            }
            catch (Exception er)
            {
                MessageBox.Show("Ha Ocurrido un Error " + er.Message);
            }
            Cursor.Current = Cursors.Default;
        }

        private void procesa(int q, int w, int e, Color color)
        {
            Bitmap b = new Bitmap(pictureBox2.Image);
            Bitmap bc = new Bitmap(b.Width, b.Height);
            Color c = new Color();
            int Rml, Gml, Bml;
            for (int i = 0; i < b.Width - 11; i = i + 10)
                for (int j = 0; j < b.Height - 11; j += 10)
                {
                    Rml = 0; Gml = 0; Bml = 0;
                    c = b.GetPixel(i, j);
                    for (int it = i; it < i + 10; it++)
                    {
                        for (int jt = j; jt < j + 10; jt++)
                        {
                            c = b.GetPixel(it, jt);
                            Rml = Rml + c.R;
                            Gml = Gml + c.G;
                            Bml = Bml + c.B;
                        }
                    }
                    Rml = Rml / 100; Gml = Gml / 100; Bml = Bml / 100;
                    if ((Rml > q - 10 && Rml < q + 10) && (Gml > w - 10 && Gml < w + 10) && (Bml > e - 10 && Bml < e + 10))
                    {
                        for (int it = i; it < i + 10; it++)
                        {
                            for (int jt = j; jt < j + 10; jt++)
                            {
                                bc.SetPixel(it, jt, color);
                            }
                        }
                    }
                    else
                    {
                        for (int it = i; it < i + 10; it++)
                        {
                            for (int jt = j; jt < j + 10; jt++)
                            {
                                c = b.GetPixel(it, jt);
                                bc.SetPixel(it, jt, Color.FromArgb(c.R, c.G, c.B));
                            }
                        }
                    }
                }
            pictureBox2.Image = bc;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
