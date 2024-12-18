package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.dto.response.CommitteeMemberResponseDTO;
import org.csekuaa.backend.model.entity.CommitteeMember;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommitteeMemberRepository extends JpaRepository<CommitteeMember, Integer> {

    @Query("""

            select new org.csekuaa.backend.model.dto.response.CommitteeMemberResponseDTO(c.committeeName,a.fullName,a.roll,d.designationName,a.photo)
from Committee c inner join CommitteeMember cm on c.committeeId=cm.committee.committeeId
inner join Designation d on cm.designation.designationId = d.designationId
inner join Alumni a on cm.user.userId=a.user.userId
where c.committeeId=:committeeId
""")
    List<CommitteeMemberResponseDTO> getAllCommitteeMembersByCommitteeId(Integer committeeId);

    @Query("""

            select new org.csekuaa.backend.model.dto.response.CommitteeMemberResponseDTO(c.committeeName,a.fullName,a.roll,d.designationName,a.photo)
from Committee c inner join CommitteeMember cm on c.committeeId=cm.committee.committeeId
inner join Designation d on cm.designation.designationId = d.designationId
inner join Alumni a on cm.user.userId=a.user.userId
where c.committeeId=:committeeId and c.isHome=true
""")
    List<CommitteeMemberResponseDTO> getCommitteeMembersInHomepage(Integer committeeId);

}

