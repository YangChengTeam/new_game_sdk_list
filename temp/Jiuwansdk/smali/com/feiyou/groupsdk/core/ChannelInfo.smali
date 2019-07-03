.class public Lcom/feiyou/groupsdk/core/ChannelInfo;
.super Ljava/lang/Object;
.source "ChannelInfo.java"


# static fields
.field private static agentId:I

.field private static appId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelInfo(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 42
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "GROUP_AGENTID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/feiyou/groupsdk/core/ChannelInfo;->agentId:I

    .line 43
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "GROUP_APPID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/feiyou/groupsdk/core/ChannelInfo;->appId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYUserInfo;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "userInfo"    # Lcom/feiyou/groupsdk/core/FYUserInfo;
    .param p2, "loginCallback"    # Lcom/feiyou/groupsdk/core/FYLoginCallback;

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/feiyou/groupsdk/core/NetConstant;->login_url:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/feiyou/groupsdk/core/ChannelInfo;->appId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    sget v6, Lcom/feiyou/groupsdk/core/ChannelInfo;->agentId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->getUserid()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "uid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "token":Ljava/lang/String;
    const-string v5, "uid"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v5, "token"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/feiyou/groupsdk/core/OkHttpUtil;->getInstance()Lcom/feiyou/groupsdk/core/OkHttpUtil;

    move-result-object v5

    new-instance v6, Lcom/feiyou/groupsdk/core/ChannelInfo$1;

    invoke-direct {v6, p0, p2}, Lcom/feiyou/groupsdk/core/ChannelInfo$1;-><init>(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V

    invoke-virtual {v5, v4, v0, v6}, Lcom/feiyou/groupsdk/core/OkHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;Lokhttp3/Callback;)V

    .line 109
    return-void
.end method

.method public static pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "info"    # Lcom/feiyou/groupsdk/core/FYPayInfo;
    .param p2, "callback"    # Lcom/feiyou/groupsdk/core/FYPayCallback;

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/feiyou/groupsdk/core/NetConstant;->order_url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/feiyou/groupsdk/core/ChannelInfo;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    sget v4, Lcom/feiyou/groupsdk/core/ChannelInfo;->agentId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "user_id"

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v3, "attach"

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getAttach()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v3, "money"

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getOrderMoney()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v3, "server"

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v3, "role"

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getRole()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v3, "ip"

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "title"

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v3, "sign"

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getSign()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v3, "level"

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getLevel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/feiyou/groupsdk/core/OkHttpUtil;->getInstance()Lcom/feiyou/groupsdk/core/OkHttpUtil;

    move-result-object v3

    new-instance v4, Lcom/feiyou/groupsdk/core/ChannelInfo$2;

    invoke-direct {v4, p0, p2}, Lcom/feiyou/groupsdk/core/ChannelInfo$2;-><init>(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    invoke-virtual {v3, v2, v0, v4}, Lcom/feiyou/groupsdk/core/OkHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;Lokhttp3/Callback;)V

    .line 173
    return-void
.end method
