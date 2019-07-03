.class public Lcom/game91/framework/listener/PayChannelListener;
.super Ljava/lang/Object;
.source "PayChannelListener.java"

# interfaces
.implements Lcom/game91/framework/core/IPayChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelOrderInfo()Ljava/util/Map;
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
    .line 68
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

    .line 69
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->getChannelOrderInfo()Ljava/util/Map;

    move-result-object v1

    .line 73
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChannelPayInfo()Ljava/util/Map;
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
    .line 49
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

    .line 50
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->getChannelPayInfo()Ljava/util/Map;

    move-result-object v1

    .line 54
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pay1(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "payInfo"    # Lcom/game91/framework/callback/PayInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/PayInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Lcom/game91/framework/callback/OrderInfo;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Lcom/game91/framework/callback/OrderInfo;>;"
    .local p5, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 23
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 24
    invoke-interface/range {v0 .. v5}, Lcom/game91/framework/core/IGameActivity;->pay1(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_0

    .line 27
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_1
    return-void
.end method

.method public pay3(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "payInfo"    # Lcom/game91/framework/callback/PayInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/PayInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Lcom/game91/framework/callback/OrderInfo;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Lcom/game91/framework/callback/OrderInfo;>;"
    .local p5, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 32
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 33
    invoke-interface/range {v0 .. v5}, Lcom/game91/framework/core/IGameActivity;->pay3(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_0

    .line 36
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_1
    return-void
.end method

.method public setChannelOrderInfo(Ljava/util/Map;)V
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
    .line 59
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

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 60
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->setChannelOrderInfo(Ljava/util/Map;)V

    goto :goto_0

    .line 64
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_1
    return-void
.end method

.method public setChannelPayInfo(Ljava/util/Map;)V
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
    .line 40
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

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 41
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->setChannelPayInfo(Ljava/util/Map;)V

    goto :goto_0

    .line 45
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_1
    return-void
.end method
