.class public Lcom/feiyou/groupsdk/core/RoleInfo;
.super Ljava/lang/Object;
.source "RoleInfo.java"


# instance fields
.field private cpUid:Ljava/lang/String;

.field private dataType:I

.field private roleId:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverID:Ljava/lang/String;

.field private union:Ljava/lang/String;

.field private vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->cpUid:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->dataType:I

    return v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getUnion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->union:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public setCpUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpUid"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->cpUid:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDataType(I)V
    .locals 0
    .param p1, "dataType"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->dataType:I

    .line 37
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->roleId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleLevel"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->roleLevel:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->roleName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setServerID(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->serverID:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUnion(Ljava/lang/String;)V
    .locals 0
    .param p1, "union"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->union:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .locals 0
    .param p1, "vip"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->vip:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoleInfo [dataType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->cpUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string v1, ", roleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roleLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->roleLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string v1, ", serverID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->serverID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->vip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", union="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->union:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/RoleInfo;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
