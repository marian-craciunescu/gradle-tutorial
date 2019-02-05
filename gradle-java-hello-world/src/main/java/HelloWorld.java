
import org.apache.log4j.Logger;


public class HelloWorld {

 private    static Logger logger  = Logger.getLogger(HelloWorld.class);

    public static void main(String[] args) {
        HelloWorld obj = new HelloWorld();
        obj.runMe("tutorial-log4j");
    }

    private void runMe(String parameter){

        if(logger.isDebugEnabled()){
            logger.debug("This is debug : " + parameter);
        }

        if(logger.isInfoEnabled()){
            logger.info("This is info : " + parameter);
        }

        logger.warn("This is warn : " + parameter);
        logger.error("This is error : " + parameter);
        logger.fatal("This is fatal : " + parameter);

    }

}
