.class public Lcom/feiyou/groupsdk/core/FYPayInfo;
.super Ljava/lang/Object;
.source "FYPayInfo.java"


# instance fields
.field private appId:I

.field private attach:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private isSdkPay:Z

.field private level:Ljava/lang/String;

.field private money:F

.field private orderMoney:I

.field private productDesc:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->isSdkPay:Z

    .line 7
    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->appId:I

    return v0
.end method

.method public getAttach()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->attach:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->money:F

    return v0
.end method

.method public getOrderMoney()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->orderMoney:I

    return v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isSdkPay()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->isSdkPay:Z

    return v0
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->appId:I

    .line 68
    return-void
.end method

.method public setAttach(Ljava/lang/String;)V
    .locals 0
    .param p1, "attach"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->attach:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->ip:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->level:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setMoney(F)V
    .locals 0
    .param p1, "money"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->money:F

    .line 108
    return-void
.end method

.method public setOrderMoney(I)V
    .locals 0
    .param p1, "orderMoney"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->orderMoney:I

    .line 148
    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "productDesc"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->productDesc:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->productName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->role:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setSdkPay(Z)V
    .locals 0
    .param p1, "isSdkPay"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->isSdkPay:Z

    .line 164
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->serverId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->sign:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->timestamp:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYPayInfo;->userId:Ljava/lang/String;

    .line 60
    return-void
.end method
