package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.alumni.MembershipDTO;
import org.csekuaa.backend.model.dto.alumni.MembershipStatusUpdateDTO;
import org.csekuaa.backend.model.dto.alumni.MembershipTypeDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.entity.Membership;
import org.csekuaa.backend.model.entity.MembershipType;
import org.csekuaa.backend.model.entity.User;
import org.csekuaa.backend.repository.MembershipTypeRepository;
import org.csekuaa.backend.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;


@Service
@RequiredArgsConstructor
public class MembershipService {
    private final MembershipTypeRepository membershipTypeRepository;
    private final UserRepository userRepository;
    private final UserDetailsParser userDetailsParser;


    public List<MembershipTypeDTO> getMemberShipTypes() {
        return membershipTypeRepository.findAll()
                .stream()
                .map(e-> {
                    MembershipTypeDTO membershipTypeDTO = new MembershipTypeDTO();
                    membershipTypeDTO.setMemberShipTypeId(e.getMembershipTypeId());
                    membershipTypeDTO.setMembershipType(e.getMembershipType());
                    membershipTypeDTO.setMembershipFee(e.getMembershipFee());
                    return membershipTypeDTO;
                }).toList();
    }

    public void addUserMembership(MembershipDTO membershipDTO) {
        User user = userRepository.findByRoll(membershipDTO.getRollNumber()).orElseThrow();
        MembershipType membershipType = membershipTypeRepository.findById(Integer.valueOf(membershipDTO.getMembershipType())).orElseThrow();
        Membership membership = new Membership();
        membership.setMembershipType(membershipType);
        membership.setUser(user);
        membership.setApproved(false);
        membership.setMembershipEndTime(getMembershipDuration(membershipType.getMembershipType()));
        user.getAlumnis().stream().findFirst()
                .ifPresentOrElse(e-> e.setMembershipType(membershipType),
                        ()-> {throw new ResourceNotFoundException("alumni is not registered yet!");});
        user.addMembership(membership);
        userRepository.save(user);
    }

    public void updateMembershipStatus(MembershipStatusUpdateDTO membershipStatusUpdateDTO) {
        User user = userRepository.findByRoll(membershipStatusUpdateDTO.getRoll()).orElseThrow();
        user.getMemberships().stream()
                .filter(e-> e.isApproved()!= membershipStatusUpdateDTO.isStatus())
                .findFirst().ifPresent(e-> e.setApproved(membershipStatusUpdateDTO.isStatus()));
        userRepository.save(user);
    }

    public MembershipDTO getMembershipByRoll(String roll) {
        User user = userRepository.findByRoll(roll).orElseThrow();
        MembershipDTO membershipDTO = new MembershipDTO();
        membershipDTO.setRollNumber(roll);
        user.getAlumnis().stream().findFirst()
                .flatMap(e -> e.getMembershipType().stream().findFirst())
                .ifPresent(membershipType -> membershipDTO.setMembershipType(membershipType.getMembershipType()));
        user.getMemberships().stream()
                .filter(e->e.getMembershipEndTime().before(Timestamp.valueOf(LocalDateTime.now())))
                        .findFirst().ifPresent(e-> membershipDTO.setApproved(e.isApproved()));
        return membershipDTO;
    }

    public MembershipDTO getMembershipByCurrentUser() {
        String rollNumber = userDetailsParser.getRollNumber();
        return getMembershipByRoll(rollNumber);
    }

    private Timestamp getMembershipDuration(String type){
        if (type.equalsIgnoreCase("Annual")) {
            LocalDateTime one = LocalDateTime.now().plusYears(1);
            return Timestamp.valueOf(one);
        }
        return Timestamp.valueOf(LocalDateTime.now().plusYears(100));
    }
}
