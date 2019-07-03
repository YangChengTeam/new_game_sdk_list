.class public Lcom/feiyou/groupsdk/core/FYUserInfo;
.super Ljava/lang/Object;
.source "FYUserInfo.java"


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "app_id"
    .end annotation
.end field

.field private isadult:I

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
    .line 54
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isIsadult()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isadult:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->appId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setIsadult(I)V
    .locals 0
    .param p1, "isadult"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->isadult:I

    .line 67
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->sign:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->timestamp:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->token:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->userid:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYUserInfo;->username:Ljava/lang/String;

    .line 43
    return-void
.end method
