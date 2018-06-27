package cz.klasik.klasikspringserver;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@EnableResourceServer
@SpringBootApplication
public class KlasikSpringServerApplication {

    private static final Logger LOG = LoggerFactory.getLogger(KlasikSpringServerApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(KlasikSpringServerApplication.class, args);
    }
}
