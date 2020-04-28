using MySql.Data.MySqlClient;
using SUBD.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Models
{
    public class User
    {
        public uint Id { get; set; }
        public uint Data_Id { get; set; }
        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string Name3 { get; set; }
        public string Login { get; set; }
        public RoleEnum Role { get; set; }
        public DateTime BlockedFrom { get; set; }
        public DateTime CreatedTime { get; set; }
        public TimeSpan BlockedTime { get; set; }
        public StatusEnum BlockedStatus { get; set; }
        public User(DataRow dataRow)
        {
            Id = (uint)dataRow["id"];
            Name1 = (string)dataRow["name1"];
            Name2 = (string)dataRow["name2"];
            Name3 = (string)dataRow["name3"];
            Role = Enum.Parse<RoleEnum>((string)dataRow["role"]);
            if (dataRow["block_status"].GetType() != typeof(System.DBNull))
                BlockedStatus = Enum.Parse<StatusEnum>((string)dataRow["block_status"]);
            Login = (string)dataRow["login"];
            if(dataRow["blocked_from"].GetType() != typeof(System.DBNull))
                BlockedFrom = (DateTime)dataRow["blocked_from"];
            CreatedTime = (DateTime)dataRow["create_time"];
            if (dataRow["block_time"].GetType() != typeof(System.DBNull))
                BlockedTime = new TimeSpan(((DateTime)dataRow["block_time"]).Ticks);    
            if (dataRow["data_id"].GetType() != typeof(System.DBNull))
                Data_Id = (uint)dataRow["data_id"];
        }
        public User(UserViewModel viewModel)
        {
            Login = viewModel.login;
            Name1 = viewModel.name1;
            Name2 = viewModel.name2;
            Name3 = viewModel.name3;
            Role = viewModel.Role;
        }
        public User()
        {
        }
    }
}
