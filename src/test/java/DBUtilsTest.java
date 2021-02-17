import com.li.bean.User1;
import com.li.dao.oldDao.impl.UserDaoImpl;
import com.li.utils.DBUtils;
import org.junit.Test;

import java.sql.Connection;
import java.util.List;

public class DBUtilsTest {

    @Test
    public void testGetDB(){
        Connection D = null;
        try {
             D = DBUtils.getConnection();
        }catch (Exception e){
            e.printStackTrace();
        }

        System.out.println(D);
    }

    @Test
    public void testGetAllUser(){
        UserDaoImpl ud = new UserDaoImpl();
        List<User1> userList =  ud.getAllUser();;
        for(User1 u : userList){
            System.out.println(u.toString());
        }
    }

    @Test
    public void testGetUserById(){
        UserDaoImpl ud = new UserDaoImpl();
        User1 u =  ud.getUserById(1);;

        System.out.println(u.toString());

    }

}
