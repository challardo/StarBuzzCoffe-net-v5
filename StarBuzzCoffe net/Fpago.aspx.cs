using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace StarBuzzCoffe_net
{
    public partial class Fpago : System.Web.UI.Page
    {
        ////SqlConnection conexion = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=BDFactura_aspnet;Integrated Security=True");
        // SqlConnection conexion = new SqlConnection(@"Data Source = YOC; Initial Catalog = BDFactura_aspnet; Integrated Security = True");
        SqlConnection conexion = Singleton.getConnection();

        double total = 0;
        string filename;
        string Filepath;
        public string resultado;

   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarInfo();
            }

           
        }
 
        public void CargarInfo()
        {

            TextBox respuestatxt = (TextBox)Page.PreviousPage.FindControl("txtResultado");
            resultado = respuestatxt.Text;
            txtRespuesta.Text = resultado;

            Label Totaltxt = (Label)Page.PreviousPage.FindControl("lblTotal");
            lblTotal.Text = Totaltxt.Text;
              
          

        }
        
        public void EnvioCorreo()
        {
            var fromAddress = new MailAddress("PruebaCarlos98@gmail.com", "YessIvans Coffee Shop");
            var toAddress = new MailAddress(txtCorreo.Text, "Cliente");
            const string fromPassword = "prueba123";
            const string subject = "Esta es tu Factura";
            const string body = "Solo con fines de prueba";

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword)

            };

            using (var message = new MailMessage(fromAddress, toAddress)
            {

                Subject = subject,
                Body = body

            })

            {
                filename = "Prefactura";
                Filepath = HttpContext.Current.Server.MapPath("\\PDFS\\" + filename + ".pdf");
                message.Attachments.Add(new System.Net.Mail.Attachment(Filepath));
                try
                {
                    smtp.Send(message);
                   // MessageBox.Show("Correo Enviado con Exito");
                }
                catch
                {
                   // MessageBox.Show("Error al enviar correo porfavor verifique conexion a internet...");
                }
            }
        }
        public static bool ComprobarFormatoEmail(string email)
        {
            String sFormato;
            sFormato = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (System.Text.RegularExpressions.Regex.IsMatch(email, sFormato))
            {
                if (System.Text.RegularExpressions.Regex.Replace(email, sFormato, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                   
                    //MessageBox.Show("Correo en el formato Incorrecto");
                    return false;
                }
            }
            else
            {
               // MessageBox.Show("Correo en el formato Incorrecto");
                return false;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnAcceptOrder_Click(object sender, EventArgs e)
        {
           
            conexion.Open();
           
            
            char pesos = '$';
            resultado = txtRespuesta.Text;
            resultado = resultado.Trim(' ');
            foreach (char r in resultado)
            {
                if (r == pesos)
                {
                    total += double.Parse(resultado.Substring(resultado.IndexOf("$") + 1, ((resultado.Length - 1 - resultado.IndexOf("$")) - (resultado.Length - resultado.IndexOf("/")))));

                    resultado = resultado.Remove(resultado.IndexOf("$"), resultado.Length + 1 - resultado.IndexOf("$") - (resultado.Length - resultado.IndexOf("/")));
                }
            }
            lblTotal.Text = "Total:  $" + total.ToString();
            //total = 0;

            Submit();
            SqlCommand insert = new SqlCommand(String.Format("INSERT INTO FACTURA (Fecha,Descripcion,Total) VALUES ('{0}','{1}','{2}')", DateTime.Now, txtRespuesta.Text, lblTotal.Text), conexion);
            insert.ExecuteNonQuery();
            conexion.Close();
           
            //  tcpConexion();
            To_pdf();
            EnvioCorreo();
        }
        protected void Submit()
        {

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Order submitted');", true);
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
                doc.Add(new Paragraph("         " + txtRespuesta.Text));
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("------------------------------------------------------------------------------------------"));
                doc.Add(new Paragraph(envio));
                doc.Add(new Paragraph("------------------------------------------------------------------------------------------"));
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("                       "));
                // GenerarDocumento(doc);
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("           " + lblTotal.Text));
                doc.AddCreationDate();



                doc.Close();
                Process.Start(Filepath);
            }
        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {

        }
    }
}