.class public Lcom/feiyou/groupsdk/core/FYUserInfo;
.super Ljava/lang/Object;
.source "FYUserInfo.java"


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "app_id"
    .end annotation
.end field

.field private birthday:Ljava/lang/String;

.field private isAuthenticated:I

.field private isadult:I

.field private sign:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

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
    .line 55
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAuthenticated()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isAuthenticated:I

    return v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isIsadult()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isadult:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->appId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->birthday:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setIsAuthenticated(I)V
    .locals 0
    .param p1, "isAuthenticated"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isAuthenticated:I

    .line 93
    return-void
.end method

.method public setIsadult(I)V
    .locals 0
    .param p1, "isadult"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isadult:I

    .line 68
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->sign:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->timestamp:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->userid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->username:Ljava/lang/String;

    .line 44
    return-void
.end method
