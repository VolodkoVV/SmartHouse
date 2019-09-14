package volodko.vyacheslav;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;


@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Bean
    public CommandLineRunner demo(final UserService userService) {
        return new CommandLineRunner() {
            @Override
            public void run(String... strings) throws Exception {
                userService.addUser("admin", "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8", UserRole.ADMIN, "", "");
                userService.addUser("user", "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8", UserRole.USER, "", "");
                userService.addUser("Slavko", "9f87b97e0520a6a8a3de2bb65ca48732dd4a9633", UserRole.USER, "", "");
            }
        };
    }

    @Bean
    public UrlBasedViewResolver setupViewResolver() {
        UrlBasedViewResolver resolver = new UrlBasedViewResolver();
        resolver.setPrefix("/WEB-INF/pages/");
        resolver.setSuffix(".jsp");
        resolver.setViewClass(JstlView.class);

        return resolver;
    }
}

//@SpringBootApplication
//public class Application extends WebMvcConfigurerAdapter implements WebMvcConfigurer {
//
//  public static void main(String[] args) {
//    SpringApplication.run(Application.class, args);
//  }
//
//  @Override
//  public void addResourceHandlers(ResourceHandlerRegistry registry) {
//    registry
//            .addResourceHandler("/css/**")
//            .addResourceLocations("/web-inf/css/");
//    registry
//            .addResourceHandler("/js/**")
//            .addResourceLocations("/web-inf/js/");
//  }
//
//  @Override
//  public void addViewControllers(ViewControllerRegistry registry) {
//    registry.addViewController("/")
//            .setViewName("forward:/web-inf/pages/index.html");
//  }
//
//
//    };