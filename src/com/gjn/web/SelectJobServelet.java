package com.gjn.web;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.gjn.mapper.JobMapper;
import com.gjn.pojo.Job;
import com.gjn.pojo.JobExample;
import com.gjn.pojo.JobExample.Criteria;

/**
 * Servlet implementation class SelectJobServelet
 */
@WebServlet("/SelectJobServelet")
public class SelectJobServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectJobServelet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		SqlSession session = getSqlSession();
		JobMapper jobMapper = session.getMapper(JobMapper.class);
		JobExample jobExample = new JobExample();
		Criteria criteria = jobExample.createCriteria();

		criteria.andJidIsNull();
		List<Job> jobList = jobMapper.selectByExample(jobExample);
		jobList.forEach(li -> System.out.println(li));
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static SqlSession getSqlSession() throws IOException {
		// 1.璇诲彇鏍稿績mybatis閰嶇疆鏂囦欢(鍦ㄥ唴瀛樹腑鍙槸娴佺殑鏂瑰紡)
		String config = "mybatis/SqlMapConfig.xml";
		InputStream is = Resources.getResourceAsStream(config);

		// 2.鍒涘缓SqlSessionFactory瀵硅薄锛屾瀵硅薄鍙互瀹屾垚瀵归厤缃枃浠剁殑璇诲彇

		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);

		// 3.鍒涘缓SqlSession瀵硅薄,璇ュ璞＄殑浣滅敤鏄皟鐢╩apper鏂囦欢杩涜鏁版嵁鎿嶄綔(涓�瀹氳鍏堝紩mapper)
		SqlSession session = sf.openSession(true); // true鑷姩鎻愪氦
		return session;
	}
}
