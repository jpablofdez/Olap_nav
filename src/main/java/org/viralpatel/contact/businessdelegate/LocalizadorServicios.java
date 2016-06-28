package org.viralpatel.contact.businessdelegate;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class LocalizadorServicios implements ApplicationContextAware {

	private static LocalizadorServicios instancia = new LocalizadorServicios();
	private static ApplicationContext applicationContext;
	
	/**
	 * método getInstance, implenmenta el patron singleton
	 * @return instacia única del objeto
	 */
	public static LocalizadorServicios getInstance(){
		return instancia;
		
	}
	/**
	 * Constructor privado
	 */
	private LocalizadorServicios(){}
	
	/**
	 * implementacion del método abstracto de  ApplicationContextAware
	 */
	public void setApplicationContext(ApplicationContext appCtx)
	throws BeansException {
		applicationContext = appCtx;
	}	
	
	/**
	 * obtiene un bean del contexto de spring
	 * @param bean
	 * @return
	 */
	public Object obtenerBean(String bean){
		return applicationContext.getBean(bean);
	}

	/**
	 * 
	 */
	public void destroy(){
		applicationContext = null;
	}
}

