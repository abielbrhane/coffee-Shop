package edu.mum.coffee.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity

public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private UserAuthenticationSuccessHandler authenticationSuccessHandler;
	@Override
    protected void configure(HttpSecurity http) throws Exception {
		System.out.println("====================================555666666666");
        http
            .authorizeRequests()
                .antMatchers("/products/**").permitAll()
                .antMatchers("/persons/**").permitAll()
                .antMatchers("/orders/**").permitAll()
                .antMatchers("/find/**").permitAll()
                .antMatchers("/user").hasRole("USER")
                .antMatchers("/admin").hasRole("ADMIN")
                .antMatchers("/","/home","/index").permitAll()
                .anyRequest().authenticated()
                .and().csrf().disable().headers().frameOptions().disable()
                .and()
            .formLogin()
            .loginPage("/login")
            	.successHandler(authenticationSuccessHandler)
            	.permitAll()
            	.and()
            .logout()
            	.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
            	.logoutSuccessUrl("/")
                .permitAll();

    }

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("abielberaki1@gmail.com").password("pw").roles("ADMIN")
		.and()
		.withUser("abbrhane@mum.edu").password("user").roles("USER");
	}
	
}