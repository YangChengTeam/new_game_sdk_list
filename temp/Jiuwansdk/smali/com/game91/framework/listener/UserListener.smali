.class public Lcom/game91/framework/listener/UserListener;
.super Ljava/lang/Object;
.source "UserListener.java"

# interfaces
.implements Lcom/game91/framework/core/ILogin;


# instance fields
.field private mIsLogin:Z

.field private mLogout:Lcom/game91/framework/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game91/framework/listener/UserListener;->mIsLogin:Z

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 27
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-interface {v0, p1, p2, p3}, Lcom/game91/framework/core/IGameActivity;->doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_0

    .line 31
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_1
    return-void
.end method

.method public doLogout(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 36
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->doLogout(Landroid/app/Activity;)V

    goto :goto_0

    .line 40
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_1
    return-void
.end method

.method public getChannelLoginInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/GameSdk;

    .line 64
    .local v0, "gameActivity":Lcom/game91/framework/core/GameSdk;
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->getChannelLoginInfo()Ljava/util/Map;

    move-result-object v1

    .line 68
    .end local v0    # "gameActivity":Lcom/game91/framework/core/GameSdk;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLogoutListener()Lcom/game91/framework/callback/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/game91/framework/listener/UserListener;->mLogout:Lcom/game91/framework/callback/Callback;

    return-object v0
.end method

.method public getUserInfo()Lcom/game91/framework/callback/UserInfo;
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 54
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->getUserInfo()Lcom/game91/framework/callback/UserInfo;

    move-result-object v1

    .line 58
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/GameSdk;

    .line 98
    .local v0, "gameActivity":Lcom/game91/framework/core/GameSdk;
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->isLogin()Z

    move-result v1

    .line 102
    .end local v0    # "gameActivity":Lcom/game91/framework/core/GameSdk;
    :goto_0
    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/game91/framework/listener/UserListener;->mIsLogin:Z

    goto :goto_0
.end method

.method public setChannelLoginInfo(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/GameSdk;

    .line 74
    .local v0, "gameActivity":Lcom/game91/framework/core/GameSdk;
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lcom/game91/framework/core/GameSdk;->setChannelLoginInfo(Ljava/util/Map;)V

    goto :goto_0

    .line 78
    .end local v0    # "gameActivity":Lcom/game91/framework/core/GameSdk;
    :cond_1
    return-void
.end method

.method public setLogin(Z)V
    .locals 3
    .param p1, "isLogin"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/game91/framework/listener/UserListener;->mIsLogin:Z

    .line 108
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/GameSdk;

    .line 109
    .local v0, "gameActivity":Lcom/game91/framework/core/GameSdk;
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-interface {v0, p1}, Lcom/game91/framework/core/GameSdk;->setLogin(Z)V

    goto :goto_0

    .line 113
    .end local v0    # "gameActivity":Lcom/game91/framework/core/GameSdk;
    :cond_1
    return-void
.end method

.method public setLogoutCallback(Lcom/game91/framework/callback/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "onLogout":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 45
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->setLogoutCallback(Lcom/game91/framework/callback/Callback;)V

    goto :goto_0

    .line 49
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_1
    return-void
.end method

.method public setLogoutListener(Lcom/game91/framework/callback/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "callback":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/game91/framework/listener/UserListener;->mLogout:Lcom/game91/framework/callback/Callback;

    .line 88
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/GameSdk;

    .line 89
    .local v0, "gameActivity":Lcom/game91/framework/core/GameSdk;
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/game91/framework/listener/UserListener;->mLogout:Lcom/game91/framework/callback/Callback;

    invoke-interface {v0, v2}, Lcom/game91/framework/core/GameSdk;->setLogoutListener(Lcom/game91/framework/callback/Callback;)V

    goto :goto_0

    .line 93
    .end local v0    # "gameActivity":Lcom/game91/framework/core/GameSdk;
    :cond_1
    return-void
.end method
