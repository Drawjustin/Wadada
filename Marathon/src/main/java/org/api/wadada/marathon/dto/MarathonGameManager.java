package org.api.wadada.marathon.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

@AllArgsConstructor
@Service
@Getter
@Builder
public class MarathonGameManager {
    private MarathonRoomManager marathonRoomManager;
    private final SimpMessagingTemplate simpMessagingTemplate;
    //private final int MarathonGameSize = 1;
    public void CreateNewMarathonGame(){
        this.marathonRoomManager = new MarathonRoomManager(simpMessagingTemplate);
    }
    public MarathonRoomManager GetMarathonRoomManager(){
        return this.marathonRoomManager;
    }





}
