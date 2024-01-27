package asm.osaki.entities.product;

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
public class NetWeight {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int netWeightID;

    @Column(name = "createAt")
    private Date createAt = new Date();
    @Temporal(TemporalType.DATE)
    @Column(name = "deleteAt")
    private Date deleteAt;
    private Boolean isDelete;

    @ManyToOne
    @JoinColumn(name = "netWeights")
    private Product productID;
}
