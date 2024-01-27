package asm.osaki.entities.usercustom;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Data
@Table
public class Address {
    @Id
    private String phoneID;
    @Column(name = "createAt")
    private Date createAt = new Date();
    @Temporal(TemporalType.DATE)
    @Column(name = "deleteAt")
    private Date deleteAt;
    private Boolean isDelete;
    @ManyToOne
    @JoinColumn(name = "addresses")
    private UserCustom userID;
}
