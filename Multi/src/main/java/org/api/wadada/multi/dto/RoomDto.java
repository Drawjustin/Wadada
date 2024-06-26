package org.api.wadada.multi.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.api.wadada.multi.dto.res.RoomMemberRes;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

// 방 안에 멤버 관리
@Getter
public class RoomDto{

    private final ConcurrentHashMap<String, RoomMemberRes> members;

    @Setter
    private int roomSeq;

    @Setter
    private int roomMode;

    @Setter
    private int roomIdx;

    @Setter
    private double flagLat;

    @Setter
    private double flagLng;

    @Setter
    private int dist;

    @Setter
    private List<LatLng> roomPoints = new ArrayList<>();

    public RoomDto() {
        this.members = new ConcurrentHashMap<>();
    }

    public void addMember(RoomMemberRes member) {
        if (members.containsKey(member.getMemberId())) {
            throw new IllegalStateException("방에 해당 멤버가 존재합니다");
        }
        members.put(member.getMemberId(), member);
    }

    public boolean removeMember(String memberId) {
        if (!members.containsKey(memberId)) {
            throw new IllegalStateException("방에 삭제할 멤버가 존재하지 않습니다");
        }
        if(members.get(memberId).isManager()){
            members.remove(memberId);
            return true;
        }
        members.remove(memberId);
        return false;
    }

    public void changeReady(String memberId) {
        if (!members.containsKey(memberId)) {
            throw new IllegalStateException("방에 변경할 멤버가 존재하지 않습니다");
        }
        RoomMemberRes member = members.get(memberId);
        member.changeReady();
    }

    public List<RoomMemberRes> getMemberList(){
        return new ArrayList<>(this.members.values());
    }
    public int getMemberCount(){
        return this.members.size();
    }

    public void removeAllMembers() {
        members.clear();
    }

    public void addPoint(double lat, double lng){
        this.roomPoints.add(new LatLng(lat,lng));
    }

}
