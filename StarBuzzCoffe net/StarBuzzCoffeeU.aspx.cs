using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using System.Diagnostics;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net.Sockets;
using System.Net;

namespace StarBuzzCoffe_net
{
    public partial class StarBuzzCoffeeU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string message = "Do you want to submit?";
            ClientScript.RegisterOnSubmitStatement(this.GetType(), "confirm", "return confirm('" + message + "');");
           MaintainScrollPositionOnPostBack = true;
        }
        int i;
        public void tcpConexion()
        {
            TcpClient tcpClient = new TcpClient();
            NetworkStream netStream = tcpClient.GetStream();
            while (i!=0) {
                byte[] bytes = System.Text.Encoding.UTF8.GetBytes(txtResultado.Text);
                netStream.Write(bytes, 0, bytes.Length);
                i = netStream.Read(bytes, 0, bytes.Length);
            }
        }
        Beverage tuBebida;
        public double total = 0;
        string filename;
        string Filepath;
        public string resultado;
        
       // static string ConexionPath = HttpContext.Current.Server.MapPath("\\App_Data\\FacturasU.mdf");
        int Resultado_Registro=0;
        //  SqlConnection conexion = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename="+ ConexionPath + ";Integrated Security = True; Connect Timeout = 30");
        ////SqlConnection conexion = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=BDFactura_aspnet;Integrated Security=True");
        //SqlConnection conexion = new SqlConnection(@"Data Source = YOC; Initial Catalog = BDFactura_aspnet; Integrated Security = True");
        SqlConnection conexion = Singleton.getConnection();
        public void btnAdd_Click(object sender, EventArgs e)
        {
            
         
            conexion.Open();
            Bebida();
            DDlistC1.SelectedIndex = 0;
            DDlistC2.SelectedIndex = 0;
            DDlistC3.SelectedIndex = 0;
            DDlistC4.SelectedIndex = 0;
            conexion.Close();
        }
        public void Bebida()
        {
            if (DDlistBeverage.SelectedIndex == 0)
            {
                tuBebida = new Espresso();
                Condimento();
                txtResultado.Text += tuBebida.getDescription() + " $" + tuBebida.cost() + "/";
            }
            if (DDlistBeverage.SelectedIndex == 1)
            {
                tuBebida = new DarkRoast();
                Condimento();
                txtResultado.Text += tuBebida.getDescription() + " $" + tuBebida.cost() + "/";
            }
            if (DDlistBeverage.SelectedIndex == 2)
            {
                tuBebida = new Decaf();
                Condimento();
                txtResultado.Text += tuBebida.getDescription() + " $" + tuBebida.cost() + "/";
            }
            if (DDlistBeverage.SelectedIndex == 3)
            {
                tuBebida = new HouseBlend();
                Condimento();
                txtResultado.Text += tuBebida.getDescription() + " $" + tuBebida.cost() + "/";
            }
        }
        public void Condimento()
        {
            if (DDlistC1.SelectedIndex == 0)
            {

            }
            if (DDlistC1.SelectedIndex == 1)
            {
                tuBebida = new Whip(tuBebida);
            }
            if (DDlistC2.SelectedIndex == 1)
            {
                tuBebida = new Whip(tuBebida);
            }
            if (DDlistC3.SelectedIndex == 1)
            {
                tuBebida = new Whip(tuBebida);
            }
            if (DDlistC4.SelectedIndex == 1)
            {
                tuBebida = new Whip(tuBebida);
            }
            if (DDlistC1.SelectedIndex == 2)
            {
                tuBebida = new Mocha(tuBebida);
            }
            if (DDlistC2.SelectedIndex == 2)
            {
                tuBebida = new Mocha(tuBebida);
            }
            if (DDlistC3.SelectedIndex == 2)
            {
                tuBebida = new Mocha(tuBebida);
            }
            if (DDlistC4.SelectedIndex == 2)
            {
                tuBebida = new Mocha(tuBebida);
            }
            if (DDlistC1.SelectedIndex == 3)
            {
                tuBebida = new Soy(tuBebida);
            }
            if (DDlistC2.SelectedIndex == 3)
            {
                tuBebida = new Soy(tuBebida);
            }
            if (DDlistC3.SelectedIndex == 3)
            {
                tuBebida = new Soy(tuBebida);
            }
            if (DDlistC4.SelectedIndex == 3)
            {
                tuBebida = new Soy(tuBebida);
            }
            if (DDlistC1.SelectedIndex == 4)
            {
                tuBebida = new Milk(tuBebida);
            }
            if (DDlistC2.SelectedIndex == 4)
            {
                tuBebida = new Milk(tuBebida);
            }
            if (DDlistC3.SelectedIndex == 4)
            {
                tuBebida = new Milk(tuBebida);
            }
            if (DDlistC4.SelectedIndex == 4)
            {
                tuBebida = new Milk(tuBebida);
            }
        }
   
        protected void Submit()
        {

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Order submitted');", true);
        }
        public void btnAcceptOrder_Click(object sender, EventArgs e)
        {
            resultado = txtResultado.Text;


            //conexion.Open();
            //Submit();

            char pesos = '$';
            resultado = resultado.Trim(' ');
            foreach (char r in resultado)
            {
                if (r == pesos)
                {
                    total += double.Parse(resultado.Substring(resultado.IndexOf("$") + 1, ((resultado.Length - 1 - resultado.IndexOf("$")) - (resultado.Length - resultado.IndexOf("/")))));

                    resultado = resultado.Remove(resultado.IndexOf("$"), resultado.Length + 1 - resultado.IndexOf("$") - (resultado.Length - resultado.IndexOf("/")));
                }
            }
            lblTotal.Text ="Total: $"+ total.ToString();
         

        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            txtResultado.Text = "";
    
            total = 0;
            DDlistC1.SelectedIndex = 0;
            DDlistC2.SelectedIndex = 0;
            DDlistC3.SelectedIndex = 0;
            DDlistC4.SelectedIndex = 0;
        }
        private void To_pdf()
        {

            int ContFac = 0;
            Document doc = new Document(PageSize.A4.Rotate(), 10, 10, 10, 10);
            ContFac++;
            
           
            var fecha = DateTime.Now.ToString("hhmm");
            filename = "Prefactura";
            Filepath = HttpContext.Current.Server.MapPath("\\PDFS\\" + filename + ".pdf");
            string misDatos = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + "\\PDFS\\" + filename + ".pdf";
            PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream(Filepath, FileMode.Create));
            if (filename.Trim() != "")
            {
                doc.Open();
                string envio = "Fecha:   " + DateTime.Now.ToString();

                Chunk chunk = new Chunk("Factura del cliente:", FontFactory.GetFont("Century Gothic", 18, iTextSharp.text.Font.BOLD));
                doc.Add(new Paragraph(chunk));
                doc.Add(new Paragraph("                        "));
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("          Orden: "));
                doc.Add(new Paragraph("         "+txtResultado.Text));
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("------------------------------------------------------------------------------------------"));
                doc.Add(new Paragraph(envio));
                doc.Add(new Paragraph("------------------------------------------------------------------------------------------"));
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("                       "));
               // GenerarDocumento(doc);
                doc.Add(new Paragraph("                       "));

                doc.AddCreationDate();

                
                doc.Close();
               Process.Start(Filepath);
            }
        }
    }
    }