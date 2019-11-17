package com.web.event.service;

import java.util.List;

import com.web.event.model.EventBean;
import com.web.event.model.OrderEventBean;

public interface EventService {
	List<EventBean> getPageEvents();
	List<EventBean> getCloseEvents();
	List<OrderEventBean> getOrderEventById(int memId);
	List<OrderEventBean> getCancelOrderEventById(int memId);
	public EventBean  getEventById(int eventId);
	void setPageNo(int pageNo);
	int getPageNo();
	long getRecordCounts();
	int getTotalPages();
	int getRecordsPerPage();
	void setRecordsPerPage(int recordsPerPage);
	void saveEvent(EventBean event);
	void updateEvent(EventBean bean);
	void openEvent(int eventId);
	void closeEvent(int eventId);
	void saveOrderEvent(OrderEventBean oeb);
}
