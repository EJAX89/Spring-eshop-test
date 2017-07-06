package performance;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.util.StopWatch;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class PerformanceMonitor implements HandlerInterceptor {

	ThreadLocal<StopWatch> stopWatchLocal = new ThreadLocal<StopWatch>();
	Logger logger = Logger.getLogger(this.getClass());
	
	//metoda pro zobrazeni celkoveho casu vykonavani pozadavku
	@Override
	public void afterCompletion(HttpServletRequest request,	HttpServletResponse response, Object handler, Exception exception)
			throws Exception {
		StopWatch stopWatch = stopWatchLocal.get();
		stopWatch.stop();

		logger.info("Celkový èas zpracovávání požadavku: " + stopWatch.getTotalTimeMillis()+ " ms");
		stopWatchLocal.set(null);
		logger.info("=======================================================");

	}

	//metoda pro zapsani casu ukonceni pozadavku 
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse response, Object handler, ModelAndView modelAndView)
			throws Exception {
		// TODO Auto-generated method stub

		logger.info("Ukonèení požadavku " + getCurrentTime());
	}

	//metoda pro zapsani casu a url pocatku pozadavku
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		StopWatch stopWatch = new StopWatch(handler.toString());
		stopWatch.start(handler.toString());
		stopWatchLocal.set(stopWatch);
		
		logger.info("Pøistupuji k URL: " + getURLPath(request));
		logger.info("Zaèátek požadavku: " + getCurrentTime());
		return true;
		
	}
	
	//zjisteni url adresy
	public String getURLPath(HttpServletRequest request) {
		String currentPath = request.getRequestURI();
		String queryString = request.getQueryString();
		queryString = queryString == null ? "" : "?" + queryString;
		return currentPath+queryString;
	}
	
	//ziskani presneho casu
	public String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy 'at' hh:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}

}
