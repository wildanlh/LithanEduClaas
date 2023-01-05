package com.lithan.xyzcars.model;

import lombok.Data;

@Data
public class AuthResponseDto {
    private int idUser;
    private String accessToken;
    private String tokenType = "Bearer ";

    public AuthResponseDto(String accessToken) {
        this.accessToken = accessToken;
    }
}
