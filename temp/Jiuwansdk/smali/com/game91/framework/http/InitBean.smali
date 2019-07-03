.class public Lcom/game91/framework/http/InitBean;
.super Lcom/game91/framework/http/JsonBean;
.source "InitBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/http/InitBean$Plugin;
    }
.end annotation


# static fields
.field private static mBean:Lcom/game91/framework/http/InitBean;


# instance fields
.field private plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game91/framework/http/InitBean$Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/game91/framework/http/JsonBean;-><init>()V

    .line 21
    sput-object p0, Lcom/game91/framework/http/InitBean;->mBean:Lcom/game91/framework/http/InitBean;

    .line 22
    return-void
.end method

.method public static bean()Lcom/game91/framework/http/InitBean;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/game91/framework/http/InitBean;->mBean:Lcom/game91/framework/http/InitBean;

    return-object v0
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "create_time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "notice"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPlugins()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/game91/framework/http/InitBean$Plugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/game91/framework/http/InitBean;->plugins:Ljava/util/List;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/game91/framework/http/InitBean;->plugins:Ljava/util/List;

    .line 80
    :try_start_0
    new-instance v2, Lcom/game91/library/gson/Gson;

    invoke-direct {v2}, Lcom/game91/library/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "plugins"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v3, [Lcom/game91/framework/http/InitBean$Plugin;

    invoke-virtual {v2, v1, v3}, Lcom/game91/library/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/game91/framework/http/InitBean$Plugin;

    .line 81
    .local v0, "ps":[Lcom/game91/framework/http/InitBean$Plugin;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/game91/framework/http/InitBean;->plugins:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "ps":[Lcom/game91/framework/http/InitBean$Plugin;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/game91/framework/http/InitBean;->plugins:Ljava/util/List;

    return-object v1

    .line 86
    :catch_0
    move-exception v1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getProtocalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "user-protocal-url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSwitch()I
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "toggle"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUpdateFileSize()J
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "packageSize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "packageDescription"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "update_time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "full_url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "versionName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isForceUpdate()Z
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "forceUpdate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public switchLogin()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/game91/framework/http/InitBean;->getData()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "login_way"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 72
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 72
    goto :goto_0
.end method
