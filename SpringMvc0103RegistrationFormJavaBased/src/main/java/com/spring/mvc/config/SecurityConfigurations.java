package com.spring.mvc.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class SecurityConfigurations extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		// add our users for in memory authentication
		
		UserBuilder users = User.withDefaultPasswordEncoder();
		
		auth.inMemoryAuthentication()
			.withUser(users.username("john").password("test123").roles("EMPLOYEE"))
			.withUser(users.username("mary").password("test123").roles("MANAGER"))
			.withUser(users.username("susan").password("test123").roles("ADMIN"));
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.csrf().ignoringAntMatchers("/rest/**").and()
		.authorizeRequests()
		.antMatchers(HttpMethod.HEAD, "/**").permitAll()
		.antMatchers(HttpMethod.POST, "/**").permitAll()
		.antMatchers(HttpMethod.PUT, "/**").permitAll()
		.antMatchers("/resources/**").permitAll()
		.anyRequest().permitAll()
		.and().logout()
		.invalidateHttpSession(true)
		.clearAuthentication(true).deleteCookies("JSESSIONID", "USER");
	//	.and().exceptionHandling().accessDeniedPage("/login.jsp");
	
	}
		
}






