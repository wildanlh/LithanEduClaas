package com.lithan.xyzcars.model;

import javax.validation.constraints.NotBlank;

import com.lithan.xyzcars.entity.UserAccount;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LoginDto {
    private int idUser;

    @NotBlank(message = "Username is required")
    private String username;

    @NotBlank(message = "Password is required")
    private String password;

    public LoginDto(UserAccount user) {
        this.idUser = user.getIdUser();
        this.username = user.getUsername();
    }
}
