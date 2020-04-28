using Microsoft.Extensions.Options;
using MySql.Data.MySqlClient;
using SUBD.Database;

namespace SUBD.Services
{
    public class DataBaseConnection
    {
        private readonly MySqlConnection connection;
        private DBConfig config { get; }
        public DataBaseConnection(IOptions<DBConfig> options)
        {
            config = options.Value;
            connection = new MySqlConnection($"datasource={config.Host};port={config.Port};username={config.User};password={config.User};"
                + $"database={config.Database};charset={config.Charset};Allow User Variables={config.AllowUserVariables.ToString()};");
            
        }
        public MySqlConnection GetConnection() => connection;
    }
}
