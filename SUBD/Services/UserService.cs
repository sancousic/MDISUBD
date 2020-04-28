using MySql.Data.MySqlClient;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUBD.Models;
using SUBD.ViewModels;

namespace SUBD.Services
{
    public class UserService
    {
        private readonly MySqlConnection _connection;
        public UserService(DataBaseConnection connection)
        {
            _connection = connection.GetConnection();
        }
        public int RegistrationUser(UserViewModel user)
        {
            string sqlCommand = $"registration_procedure";

            using (_connection)
            {
                _connection.Open();
                MySqlCommand command = new MySqlCommand(sqlCommand, _connection);
                command.CommandType = CommandType.StoredProcedure;                
                MySqlParameter is_Ok = new MySqlParameter { ParameterName = "is_Ok", MySqlDbType = MySqlDbType.Int32, Direction = ParameterDirection.Output  };
                command.Parameters.AddRange(user.GetParamets());
                command.Parameters.Add(is_Ok);
                command.ExecuteNonQuery();

                return (int)command.Parameters["is_Ok"].Value;
            }
        }
        public int LoginUser(LoginViewModel user)
        {
            string sqlCommand = $"authorization_procedure";
            using (_connection)
            {
                _connection.Open();
                MySqlCommand command = new MySqlCommand(sqlCommand, _connection);
                command.CommandType = CommandType.StoredProcedure;
                MySqlParameter result = new MySqlParameter { ParameterName = "result", MySqlDbType = MySqlDbType.Int32, Direction = ParameterDirection.Output };
                command.Parameters.AddRange(user.GetParamets());
                command.Parameters.Add(result);
                command.ExecuteNonQuery();
                return (int)command.Parameters["result"].Value;
            }
        }
        public void DeleteUser(uint id)
        {
            string sqlComand = $"call delete_procedure('{id}');";
            using (_connection)
            {
                _connection.Open();
                MySqlCommand command = new MySqlCommand(sqlComand, _connection);
                command.ExecuteNonQuery();
            }
        }
        public void UpdateUser(EditUserViewModel model)
        {
            string sqlComand = $"call update_procedure('{model.Id}','{model.name1}','{model.name2}','{model.name3}'," +
                    $"'{model.login}','{model.Role}');";
            using (_connection)
            {
                _connection.Open();
                MySqlCommand command = new MySqlCommand(sqlComand, _connection);
                command.ExecuteNonQuery();                
            }
        }
        public RoleEnum GetRole(int id)
        {
            string sqlCommand = $"select users.role from users where users.id = {id};";
            using (_connection)
            {
                _connection.Open();
                MySqlCommand command = new MySqlCommand(sqlCommand, _connection);
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                DataTable table = new DataTable();
                adapter.Fill(table);
                return Enum.Parse<RoleEnum>((string)table.Rows[0]["role"]);
            }
        }
        public List<User> SearchUsers(string name1="", string name2="", string name3="", string login="", string role ="", int b1=1, int b2=2)
        {
            string sqlCommand = $"call search_procedure('{name1}', '{name2}','{name3}','{login}','{role}','{b1}','{b2}');";
            List<User> res = new List<User>();
            using (_connection)
            {
                _connection.Open();
                MySqlCommand command = new MySqlCommand(sqlCommand, _connection);
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                DataTable table = new DataTable();
                adapter.Fill(table);

                for(int i = 0; i < table.Rows.Count; i++)
                {
                    res.Add(new User(table.Rows[i]));
                }
            }
            return res;
        }
        public void BlockUser(int id)
        {
            BlockUser(id, "blocked");
        }
        public void UnblockUser(int id)
        {
            BlockUser(id, "active");
        }
        public void BlockUser(int id, TimeSpan time)
        {
            long t = time.Seconds;
            string sqlComand = $"create event if not exists block_event_{id}" +
                        $"on schedule at date_add(now(), interval {t} second)" +
		                $"do update users set users.block_status = 'blocked' where users.id = {id};";
            using (_connection)
            {
                _connection.Open();
                MySqlCommand command = new MySqlCommand(sqlComand, _connection);
                command.ExecuteNonQuery();
            }
        }
        private void BlockUser(int id, string status)
        {
            string sqlComand = $"call block_procedure('{id}', '{status}');";
            using (_connection)
            {
                _connection.Open();
                MySqlCommand command = new MySqlCommand(sqlComand, _connection);
                command.ExecuteNonQuery();
            }
        }
    }
}
