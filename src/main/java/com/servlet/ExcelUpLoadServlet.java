package com.servlet;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.entity.PersonInfor;
import com.service.impl.PersonInforServiceImpl;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@WebServlet("/ExcelUpLoadServlet")
public class ExcelUpLoadServlet extends HttpServlet {
    PersonInforServiceImpl personInforService = new PersonInforServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Excel上传数据");

        //        文件上传数据
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload fileUpload = new ServletFileUpload(factory);
//        设置单个文件为3MB
        fileUpload.setFileSizeMax(1024*1024*3);
//总文件大小为30MB
        fileUpload.setSizeMax(1024*1024*3*10);

        try{
//            生成表单项
            List<FileItem> list;
            list = fileUpload.parseRequest(new ServletRequestContext(request));
            for(FileItem fileItem:list){
//                解析附件上传表单
                if(!fileItem.isFormField()){
//                    是附件
                    InputStream in = fileItem.getInputStream();
                    EasyExcel.read(in, PersonInfor.class, new AnalysisEventListener<PersonInfor>() {

                        @Override
                        public void invoke(PersonInfor user, AnalysisContext analysisContext) {
                            personInforService.AddPerson(user);
//                            解析每一行时被调用


//                            int pid = user.getPid();
//                            if(personInforService.UpdatePersonById(user)==1){
//                                try {
//                                    response.sendRedirect("/DataFFF_war_exploded/GetAllPersonServlet");
//                                } catch (IOException e) {
//                                    e.printStackTrace();
//                                }
//                            }else {
//                                if (personInforService.AddPerson(user)==1){
//                                    try {
//                                        response.sendRedirect("/DataFFF_war_exploded/GetAllPersonServlet");
//                                    } catch (IOException e) {
//                                        e.printStackTrace();
//                                    }
//                                }else {
//                                    System.out.println("插入失败");
//                                }
//                            }
//
                        }

                        @Override
                        public void doAfterAllAnalysed(AnalysisContext analysisContext) {
//解析完被调用
                            System.out.println("解析已完成");
                        }
                    }).sheet().doRead();
                }else {
//                    普通提交

                }
            }

        }catch (FileUploadException e){
            e.printStackTrace();
        }

        response.sendRedirect("/DataFFF_war_exploded/GetAllPersonServlet");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
