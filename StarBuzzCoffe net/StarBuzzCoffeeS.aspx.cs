using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace StarBuzzCoffe_net
{
    public partial class StarBuzzCoffeeS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //llenarTabla();
        }

        string descripcion, Fecha, Total, Id;
        SqlDataAdapter Adaptador;
        int index;
        DataTable DT;
        string filename;
        string Filepath;

        //SqlConnection conexion = new SqlConnection(@"Data Source =YOC; Initial Catalog = BDFactura_aspnet; Integrated Security = True");
        //// SqlConnection conexion = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=BDFactura_aspnet;Integrated Security=True");
        SqlConnection conexion = Singleton.getConnection();
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            index = Convert.ToInt32(e.CommandArgument);
            GridViewRow gvRow = GridView1.Rows[index];

            Id = gvRow.Cells[0].Text;
            Fecha = gvRow.Cells[1].Text;
            descripcion = gvRow.Cells[2].Text;
            Total = gvRow.Cells[3].Text;
            To_pdf();
        }

        /* public void BucarPorFecha(DataGridView DGVMostrarCitas)
        {
            Adaptador = new SqlDataAdapter("SELECT IdCita,DiaCita,HoraCita,EspecificacionesServicio,Servicios.Servicio,Especialistas.NombreEspecialista,Usuarios.NombreU,Esteticas.NombreEstetica From Citas INNER JOIN Usuarios ON Citas.IdUsuario=Usuarios.IdUsuario INNER JOIN Esteticas  ON Citas.IdEstetica=Esteticas.IdEstetica INNER JOIN Especialistas ON Citas.IdEspecialista=Especialistas.IdEspecialista INNER JOIN Servicios ON Citas.IdServicio=Servicios.IdServicio where Citas.IdUsuario=" + IdDeUsuario+"AND Citas.DiaCita LIKE '%"+FechaCita+"%'" + "", Conexion);
           // Adaptador = new SqlDataAdapter("SELECT IdCita,Especialistas.NombreEspecialista AS Especialista,DiaCita,HoraCita,EspecificacionesServicio AS Especificaciones,Servicios.Servicio,Usuarios.NombreCompletoU AS Cliente,Esteticas.NombreEstetica From Citas INNER JOIN Usuarios ON Citas.IdUsuario=Usuarios.IdUsuario INNER JOIN Esteticas  ON Citas.IdEstetica=Esteticas.IdEstetica INNER JOIN Especialistas ON Citas.IdEspecialista=Especialistas.IdEspecialista INNER JOIN Servicios ON Citas.IdServicio=Servicios.IdServicio where Citas.DiaCita LIKE '%" + FechaCita + "%' AND Citas.IdEspecialista=" + IdDeEspecialista + "", Conexion);
            DT = new DataTable();
            Adaptador.Fill(DT);
            DGVMostrarCitas.DataSource = DT;
        }*/


        public void Buscar()
        {
           
            Adaptador = new SqlDataAdapter("SELECT * FROM FACTURA WHERE FECHA LIKE '%" + txtBuscar.Text + "%'" + "", conexion);
            DT = new DataTable();
            Adaptador.Fill(DT);
            GridView1.DataSource = DT;
        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            Buscar();
        }

        protected void FacturaCafe2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        public void llenarTabla()
        {
            Adaptador = new SqlDataAdapter("SELECT * FROM FACTURA", conexion);
            DT = new DataTable();
            Adaptador.Fill(DT);
            GridView1.DataSource = DT;
        }
        private void To_pdf()
        {
            int ContFac = 0;
            Document doc = new Document(PageSize.A4.Rotate(), 10, 10, 10, 10);
            ContFac++;


            var fecha = DateTime.Now.ToString("hhmm");
            filename = Id;
            //------desktop-----C:\Users\Ivan\Desktop
            Filepath = HttpContext.Current.Server.MapPath("\\PDFS\\" + filename + ".pdf");

            PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream(Filepath, FileMode.Create));

            if (filename.Trim() != "")
            {
                doc.Open();
                string envio = "Fecha:   " + DateTime.Now.ToString();

                Chunk chunk = new Chunk("Factura del cliente:", FontFactory.GetFont("Century Gothic", 18, iTextSharp.text.Font.BOLD));
                doc.Add(new Paragraph(chunk));
                doc.Add(new Paragraph("                        "));
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("         Folio:" + Id));
                doc.Add(new Paragraph("          Orden: "));
                doc.Add(new Paragraph(descripcion));
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("------------------------------------------------------------------------------------------"));
                doc.Add(new Paragraph(Fecha));
                doc.Add(new Paragraph("------------------------------------------------------------------------------------------"));
                doc.Add(new Paragraph("                       "));

                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("                       "));
                // GenerarDocumento(doc);
                doc.Add(new Paragraph("                       "));
                doc.Add(new Paragraph("           " + Total));
                doc.AddCreationDate();



                doc.Close();
                Process.Start(Filepath);

                //Response.Redirect(filename);
            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            /*conexion.Open();
            string Fecha = Calendar1.SelectedDate.ToString("MM/d/yyyy");
            txtBuscarId.Text = Fecha;
            SqlCommand FechaCom = new SqlCommand("SELECT * FROM FACTURA WHERE Fecha like" + Fecha + "'%'", conexion);
            FechaCom.ExecuteNonQuery();
            */
        }

       
    }
}