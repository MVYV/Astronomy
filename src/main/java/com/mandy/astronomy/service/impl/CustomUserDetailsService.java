package com.mandy.astronomy.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.mandy.astronomy.entity.Role;
import com.mandy.astronomy.entity.Users;
import com.mandy.astronomy.repository.RoleRepository;
import com.mandy.astronomy.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
* A custom {@link UserDetailsService} where user information
* is retrieved from a JPA repository
*/
@Service
@Transactional(readOnly = true)
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UsersRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    private static final boolean ENABLED = true;
    private static final boolean ACCOUNT_NON_EXPIRED = true;
    private static final boolean CREDENTIALS_NON_EXPIRED = true;
    private static final boolean ACCOUNT_NON_LOCKED = true;

    /**
     * Returns a populated {@link UserDetails} object.
     * The username is first retrieved from the database and then mapped to
     * a {@link UserDetails} object.
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        Users domainUser = userRepository.findByName(username);
        Role role = roleRepository.findByName((username));

        if (domainUser == null) {
            throw new UsernameNotFoundException("Could not find User with username=" +username );
        }

        // User for SpringSecurity
        UserDetails principal = new org.springframework.security.core.userdetails.User(
                domainUser.getName(),
                domainUser.getPassword().toLowerCase(),
                ENABLED,
                ACCOUNT_NON_EXPIRED,
                CREDENTIALS_NON_EXPIRED,
                ACCOUNT_NON_LOCKED,
                getAuthorities(role.getRole()));

        return principal;
    }

    /**
     * Retrieves a collection of {@link GrantedAuthority} based on a numerical role
     * @paramnumericalRole the numerical role
     * @return a collection of {@link GrantedAuthority}
     */
    private Collection<? extends GrantedAuthority> getAuthorities(String roles) {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

        authorities.add(new SimpleGrantedAuthority(roles));


        return authorities;
    }



}