package com.emergentes.dao;

import com.emergentes.modelo.Usuario;
import com.emergentes.utiles.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAOimpl extends ConexionDB implements UsuarioDAO {

    @Override
    public void insert(Usuario usr) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("INSERT INTO usuarios (nombres, apellidos, email, password) VALUES (?,?,?,md5(?))");
            ps.setString(1, usr.getNombres()); // colocando datos
            ps.setString(2, usr.getApellidos());
            ps.setString(3, usr.getEmail());
            ps.setString(4, usr.getPassword());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Usuario usr) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("UPDATE usuarios SET nombres = ?, apellidos = ?, email = ?, password = md5(?) WHERE id = ?");
            ps.setString(1, usr.getNombres()); // colocando datos
            ps.setString(2, usr.getApellidos());
            ps.setString(3, usr.getEmail());
            ps.setString(4, usr.getPassword());
            ps.setInt(5, usr.getId());

            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

   @Override
    public void delete(int id) throws Exception {
       try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("DELETE FROM usuarios WHERE id = ?");
            
            ps.setInt(1, id);
            
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

   @Override
    public Usuario getById(int id) throws Exception {
            Usuario usr = new Usuario();
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM usuarios WHERE id = ?");
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery(); // como es consulta selccion
            if(rs.next()){ // adicionar datos en el objeto cliente
                usr.setId(rs.getInt("id"));
                usr.setNombres(rs.getString("nombres"));
                usr.setApellidos(rs.getString("apellidos"));
                usr.setEmail(rs.getString("email"));
                
            }        
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return usr;
    }

   @Override
    public List<Usuario> getAll() throws Exception {
           List<Usuario> lista = null;
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM usuarios");
            
            ResultSet rs = ps.executeQuery(); // como es consulta selccion
            
            lista = new ArrayList<Usuario>(); // inicializar lista
            
            while(rs.next()){ // adicionar datos en el objeto cliente
                Usuario usu = new Usuario();
                
                usu.setId(rs.getInt("id"));
                usu.setNombres(rs.getString("nombres"));
                usu.setApellidos(rs.getString("apellidos"));
                usu.setEmail(rs.getString("email"));
                
                lista.add(usu);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lista;
    }

}
