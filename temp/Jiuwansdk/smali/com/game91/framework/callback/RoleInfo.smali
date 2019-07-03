.class public Lcom/game91/framework/callback/RoleInfo;
.super Ljava/lang/Object;
.source "RoleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/callback/RoleInfo$SubmitRoleType;
    }
.end annotation


# static fields
.field public static final SUBMIT_EXTRA_CREATE_ROLE:I = 0x5

.field public static final SUBMIT_EXTRA_ENTER_COPY:I = 0x3

.field public static final SUBMIT_EXTRA_ENTER_GAME:I = 0x1

.field private static final SUBMIT_EXTRA_ERROR:I = 0x0

.field public static final SUBMIT_EXTRA_LEAVE_COPY:I = 0x4

.field public static final SUBMIT_EXTRA_LEVEL_UP:I = 0x2


# instance fields
.field private cpUid:Ljava/lang/String;

.field private createRoleTime:J

.field private dataType:I

.field private roleID:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverID:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private union:Ljava/lang/String;

.field private vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/game91/framework/callback/RoleInfo;->dataType:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->cpUid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->roleID:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->roleName:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->roleLevel:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->serverID:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->serverName:Ljava/lang/String;

    .line 57
    const-string v0, "0"

    iput-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->vip:Ljava/lang/String;

    .line 58
    const-string v0, "\u6682\u65e0"

    iput-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->union:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/game91/framework/callback/RoleInfo;->createRoleTime:J

    return-void
.end method

.method private formatCeateTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 86
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/game91/framework/callback/RoleInfo;->createRoleTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "timeStamp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    :cond_0
    const/4 v4, 0x0

    .line 91
    .local v4, "timeString":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 93
    .local v0, "l":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 98
    .end local v0    # "l":J
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v3    # "timeStamp":Ljava/lang/String;
    .end local v4    # "timeString":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 95
    :catch_0
    move-exception v5

    .line 98
    const-string v4, ""

    goto :goto_0
.end method

.method private put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;
    .locals 1
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getCpUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->cpUid:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateRoleTime()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/game91/framework/callback/RoleInfo;->createRoleTime:J

    return-wide v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/game91/framework/callback/RoleInfo;->dataType:I

    return v0
.end method

.method public getDataTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, ""

    return-object v0
.end method

.method public getRoleID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->roleID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->union:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/game91/framework/callback/RoleInfo;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public hashMap()Ljava/util/Map;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v0, "map":Ljava/util/Map;
    const-string v1, "cpUid"

    iget-object v2, p0, Lcom/game91/framework/callback/RoleInfo;->cpUid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/game91/framework/callback/RoleInfo;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    .line 73
    const-string v1, "roleId"

    iget-object v2, p0, Lcom/game91/framework/callback/RoleInfo;->roleID:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/game91/framework/callback/RoleInfo;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    .line 74
    const-string v1, "roleName"

    iget-object v2, p0, Lcom/game91/framework/callback/RoleInfo;->roleName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/game91/framework/callback/RoleInfo;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    .line 75
    const-string v1, "roleLevel"

    iget-object v2, p0, Lcom/game91/framework/callback/RoleInfo;->roleLevel:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/game91/framework/callback/RoleInfo;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    .line 76
    const-string v1, "serverId"

    iget-object v2, p0, Lcom/game91/framework/callback/RoleInfo;->serverID:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/game91/framework/callback/RoleInfo;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    .line 77
    const-string v1, "serverName"

    iget-object v2, p0, Lcom/game91/framework/callback/RoleInfo;->serverName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/game91/framework/callback/RoleInfo;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    .line 78
    const-string v1, "vip"

    iget-object v2, p0, Lcom/game91/framework/callback/RoleInfo;->vip:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/game91/framework/callback/RoleInfo;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    .line 79
    const-string v1, "union"

    iget-object v2, p0, Lcom/game91/framework/callback/RoleInfo;->union:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/game91/framework/callback/RoleInfo;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    .line 80
    const-string v1, "roleCreateAt"

    invoke-direct {p0}, Lcom/game91/framework/callback/RoleInfo;->formatCeateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/game91/framework/callback/RoleInfo;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;

    .line 81
    return-object v0
.end method

.method public setCpUid(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;
    .locals 0
    .param p1, "cpUid"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/game91/framework/callback/RoleInfo;->cpUid:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setCreateRoleTime(J)Lcom/game91/framework/callback/RoleInfo;
    .locals 1
    .param p1, "createRoleTime"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/game91/framework/callback/RoleInfo;->createRoleTime:J

    .line 207
    return-object p0
.end method

.method public setDataType(I)Lcom/game91/framework/callback/RoleInfo;
    .locals 0
    .param p1, "dataType"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/game91/framework/callback/RoleInfo;->dataType:I

    .line 155
    return-object p0
.end method

.method public setRoleID(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;
    .locals 0
    .param p1, "roleID"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/game91/framework/callback/RoleInfo;->roleID:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public setRoleLevel(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;
    .locals 0
    .param p1, "roleLevel"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/game91/framework/callback/RoleInfo;->roleLevel:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setRoleName(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;
    .locals 0
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/game91/framework/callback/RoleInfo;->roleName:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public setServerID(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/game91/framework/callback/RoleInfo;->serverID:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public setServerName(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/game91/framework/callback/RoleInfo;->serverName:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setUnion(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;
    .locals 0
    .param p1, "union"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/game91/framework/callback/RoleInfo;->union:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public setVip(Ljava/lang/String;)Lcom/game91/framework/callback/RoleInfo;
    .locals 0
    .param p1, "vip"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/game91/framework/callback/RoleInfo;->vip:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    const-string v0, "[\u63d0\u4ea4\u6570\u636e\u7c7b\u578b:%s]\r\n[\u6e38\u620fID:%s]\r\n[\u89d2\u8272ID:%s]\r\n[\u89d2\u8272\u540d:%s]\r\n[\u89d2\u8272\u7b49\u7ea7:%s]\r\n[\u670d\u52a1\u5668ID:%s]\r\n[\u670d\u52a1\u5668\u540d\u79f0:%s]\r\n[VIP:%s]\r\n[\u5de5\u4f1a\u540d:%s]\r\n[\u89d2\u8272\u521b\u5efa\u65f6\u95f4:%s]"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/game91/framework/callback/RoleInfo;->getDataTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/game91/framework/callback/RoleInfo;->cpUid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/game91/framework/callback/RoleInfo;->roleID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/game91/framework/callback/RoleInfo;->roleName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/game91/framework/callback/RoleInfo;->roleLevel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/game91/framework/callback/RoleInfo;->serverID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/game91/framework/callback/RoleInfo;->serverName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/game91/framework/callback/RoleInfo;->vip:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/game91/framework/callback/RoleInfo;->union:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/game91/framework/callback/RoleInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 63
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
