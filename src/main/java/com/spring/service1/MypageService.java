package com.spring.service1;

import org.springframework.web.servlet.ModelAndView;

public interface MypageService {
	
	ModelAndView getphotolist(String email); //��������Ʈ(��κ���)
	ModelAndView getpicture(String email); //�����ø� ���� (����)
	ModelAndView getlike(String email); //���ƿ��ѻ��� (���ƿ�)
	ModelAndView getorder(String email); // �ֹ�����
	ModelAndView getoption(String email); // ȸ����������
	ModelAndView getResultUpdate(Object vo); //ȸ����������ó��
	ModelAndView getreview(String email); // ���� ����Ʈ �ҷ�����(����Ʈ��)
	ModelAndView getreview1(String email); // ���� ����Ʈ �ҷ����� (�ֽż�)
	ModelAndView getpasschange(String pass,String email); // �佺���庯��
	ModelAndView getquestlist(String email);//���ǹ���
	ModelAndView getpanme(String email); //�Ǹ�Ȱ������
	ModelAndView getqna(String email);//���Ǵ亯
	ModelAndView getreviewpage(String email);//�����ۼ�
	String getpictureproc(String pno, String nickname);// �������ƿ� ������ ����
	String getpicturedelete(String pno,String email); // ���� �ٽô����� ���ƿ� ����
	ModelAndView getlactivity(String email);//���� ���ƿ� ���� ����Ʈ
	ModelAndView getnotice(); //�������� ����Ʈ
	ModelAndView getnoticecontent(String nno);//�������� ������
	ModelAndView getscrap_all(String email); // ��ũ�� ��ü ����Ʈ
	ModelAndView getscrap_pro(String email); // ��ũ�� ��ǰ ����Ʈ
	ModelAndView getscrap_photo(String email); //��ũ�� ���� ����Ʈ
	String getpicturescrap(String pno,String email);//��ũ�������� �μ�Ʈ
	String getpscrapdelete(String pno,String email);//��ũ�� �ٽ��ѹ� ������ ����
	String getmember_delete(String email); //ȸ��Ż��
	String getreviewproc(String gno); // �����ۼ� (ajax)
	String getreviewproc1(String gno); //������� (ajax)
	ModelAndView getreviewinsert(Object vo); //���� insert
	ModelAndView getreviewupdate(Object vo); //���� update
	
}
