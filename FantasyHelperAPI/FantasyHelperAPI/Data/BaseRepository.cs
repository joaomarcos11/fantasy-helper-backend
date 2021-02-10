using System.Data;
using System.Data.SqlClient;
using FantasyHelperAPI.Infra;

namespace FantasyHelperAPI.Data
{
    public abstract class BaseRepository
    {
    public BaseRepository(Connection conn)
    {
        this.conn = conn;
    }
    private Connection conn;
    private SqlCommand command;

    protected void SetProcedure(object procedureName)
    {
        command = new SqlCommand(procedureName.ToString(), conn.connection);
        command.CommandType = CommandType.StoredProcedure;
    }
    protected void AddParameter(string name, object value)
    {
        command.Parameters.AddWithValue("@" + name, value);
    }
    protected int ExecuteNonQuery()
    {
        conn.OpenConnection();
        var result = command.ExecuteNonQuery();
        return result;
    }

    protected SqlDataReader ExecuteReader()
    {
        conn.OpenConnection();
        var reader = command.ExecuteReader();
        return reader;
    }
  }
}