.class public Lcom/feiyou/groupsdk/core/FYUserInfo;
.super Ljava/lang/Object;
.source "FYUserInfo.java"


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "app_id"
    .end annotation
.end field

.field private isAuthenticated:I

.field private isadult:I

.field private mobile:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_id"
    .end annotation
.end field

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAuthenticated()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isAuthenticated:I

    return v0
.end method

.method public getIsadult()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isadult:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isIsadult()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isadult:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->appId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setIsAuthenticated(I)V
    .locals 0
    .param p1, "isAuthenticated"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isAuthenticated:I

    .line 103
    return-void
.end method

.method public setIsadult(I)V
    .locals 0
    .param p1, "isadult"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isadult:I

    .line 71
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->mobile:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->sign:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->timestamp:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->token:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->userid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->username:Ljava/lang/String;

    .line 47
    return-void
.end method
