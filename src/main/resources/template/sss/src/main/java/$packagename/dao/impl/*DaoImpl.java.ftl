package ${packageName}.dao.impl;
import java.util.*;
import ${packageName}.model.${upperFirstLetterName};
import ${packageName}.dao.${upperFirstLetterName}Dao;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * This is generated by Sloth.
 * ${name}
 */
@Repository(value = "${lowerFirstLetterName}Dao")
public class ${upperFirstLetterName}DaoImpl implements ${upperFirstLetterName}Dao{

	@Autowired
	JdbcTemplate jdbcTemplate;

	/**
	*  获取${upperFirstLetterName}的数量
	*/
	public Integer count(){
		String sql = "select count(*) from ${name}";
		return jdbcTemplate.queryForObject(sql,null,Integer.class);
	}

	/**
	* 根据主键查询
	*/
	public ${upperFirstLetterName} getByPrimaryKey(Object primaryKey){
		String sql = "select * from ${name} where ${primaryKey} = ?" ;
		return jdbcTemplate.queryForObject( sql, new Object[] { primaryKey }, ${upperFirstLetterName}.class);
	}

	/**
	* 根据主键删除
	*/
	public Integer deleteByPrimaryKey(Object primaryKey){
		String sql = "delete from ${name} where ${primaryKey} = ? ";
		return jdbcTemplate.update(sql, primaryKey);
	}

	/**
	* 根据主键更新
	*/
	public Integer updateByPrimaryKey(${upperFirstLetterName} ${lowerFirstLetterName}){
		String sql = " update ${name} set ${stringCarrayNames9}  where ${primaryKey} = ? ";
		return jdbcTemplate.update(sql, ${stringCarrayNames10});
	}

	/**
	* 插入新数据
	*/
	public Integer insert(${upperFirstLetterName} ${lowerFirstLetterName}){
		String sql = " insert into ${name} ( ${stringCarrayNames3} ) values (${stringCarrayNames11}) ";
		return jdbcTemplate.update(sql, ${stringCarrayNames10});
	}

	/**
	* 获取前10条数据
	*/
	public List<${upperFirstLetterName}> list(){
		return null;
	}

	/**
	* 分页查找
	*/
	public List<${upperFirstLetterName}> page(int start, int step ){
		return null;
	}
	
}