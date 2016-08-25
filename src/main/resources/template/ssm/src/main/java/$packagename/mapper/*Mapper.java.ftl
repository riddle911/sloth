package ${packageName}.mapper;
import java.util.*;
import ${packageName}.model.${upperFirstLetterName};
import org.apache.ibatis.annotations.*;

/**
 * This is generated by RKiller.
 * ${name}
 */
public interface ${upperFirstLetterName}Mapper{

	/**
	*  获取${upperFirstLetterName}的数量
	*/
	@Select("SELECT COUNT(*) FROM ${name} ")
	Integer count();

	/**
	* 根据主键查询
	*/
	@Select("SELECT * FROM ${name} WHERE ${primaryKey} = ${"#"}{primaryKey} LIMIT 1 ")
	${upperFirstLetterName} getByPrimaryKey(@Param("primaryKey") Object primaryKey);

	/**
	* 根据主键删除
	*/
	@Delete("DELETE FROM ${name} WHERE ${primaryKey} = ${"#"}{primaryKey} ")
	Integer deleteByPrimaryKey(@Param("primaryKey") Object primaryKey);

	@Update({
		"UPDATE ${name} SET ${stringCarrayNames5} where ${primaryKey} = ${"#"}{${primaryKey}}"
	})
	Integer updateByPrimaryKey(${upperFirstLetterName} ${lowerFirstLetterName});

	@Insert({
	"INSERT INTO ${name} (${stringCarrayNames3})",
	"VALUE (${stringCarrayNames4}) ON DUPLICATE KEY UPDATE ${primaryKey}=${primaryKey}"
	})
	Integer insert(${upperFirstLetterName} ${lowerFirstLetterName});

	/**
	* 获取前10条列表
	*/
	@Select("SELECT * FROM ${name} LIMIT 10 ")
	List<${upperFirstLetterName}> list();

	/**
	* 分页查找
	*/
	@Select("SELECT * FROM ${name} LIMIT ${"#"}{start}, ${"#"}{step}")
	List<${upperFirstLetterName}> page(@Param("start") int start, @Param("step") int step );


	/**
	* 獲取uuid
	*/
	@Select("SELECT `AUTO_INCREMENT` as number FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = '${sourceDbSchema}' AND TABLE_NAME = '${name}'")
	Integer increment();
	
}