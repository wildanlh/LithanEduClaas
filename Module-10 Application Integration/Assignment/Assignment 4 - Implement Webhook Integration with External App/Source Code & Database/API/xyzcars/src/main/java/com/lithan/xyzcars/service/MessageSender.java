package com.lithan.xyzcars.service;

import com.fasterxml.jackson.core.JsonProcessingException;

import com.lithan.xyzcars.models.MessageDto;

public interface MessageSender {

  public void sendMessage(String userName, MessageDto message) throws JsonProcessingException;
}
