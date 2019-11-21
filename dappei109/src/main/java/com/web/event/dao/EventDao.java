package com.web.event.dao;

import java.util.List;

import com.web.event.model.EventBean;
import com.web.event.model.OrderEventBean;

public interface EventDao {
	List<EventBean> getPageEvents();
	List<EventBean> getCloseEvents();
	List<OrderEventBean> getOrderEventById(int memId);
	List<OrderEventBean> getCancelOrderEventById(int memId);
    EventBean  getEventById(int eventId);
	OrderEventBean getOrderEventByOrderId(int orderEventid);
	void setPageNo(int pageNo);
	int getPageNo();
	long getRecordCounts();
	int getTotalPages();
	int getRecordsPerPage();
	void setRecordsPerPage(int recordsPerPage);
	void saveEvent(EventBean event);
	void updateEvent(EventBean bean) ;
	void openEvent(int eventId);
	void closeEvent(int eventId);
	void saveOrderEvent(OrderEventBean oeb);
	void cancelEventOrder(int id);
	
}
