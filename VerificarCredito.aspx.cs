using System;
using System.Data.SqlClient;

public partial class VerificarCredito : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Numero_de_Credito"] != null)
        {
            string numeroCredito = Request.QueryString["Numero_de_Credito"];

            // Conexión a la base de datos (cambia la cadena de conexión según tu base de datos)
            string connectionString = "workstation id=IBKANCAP.mssql.somee.com;packet size=4096;user id=Dextep_SQLLogin_2;pwd=szktjdm46i;data source=IBKANCAP.mssql.somee.com;persist security info=False;initial catalog=IBKANCAP";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Consulta SQL para verificar si el número de crédito existe en la base de datos
                string query = "SELECT * FROM CarteraBBVA WHERE Numero_de_Credito = @NumeroCredito";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@NumeroCredito", numeroCredito);

                    int count = (int)command.ExecuteScalar();

                    if (count > 0)
                    {
                        // El número de crédito existe, redirecciona a la segunda página
                        Response.Redirect("SacActivos-segundapagina.html");
                    }
                    else
                    {
                        // El número de crédito no existe, muestra un mensaje de error
                        Response.Write("El número de crédito no existe o es incorrecto.");
                    }
                }
            }
        }
        else
        {
            // No se proporcionó un número de crédito en la consulta
            Response.Write("Por favor, ingrese un número de crédito válido.");
        }
    }
}
try
{
    // Tu código actual de verificación aquí
}
catch (Exception ex)
{
    // Registra la excepción para depuración
    System.Diagnostics.Trace.WriteLine("Error: " + ex.Message);
}