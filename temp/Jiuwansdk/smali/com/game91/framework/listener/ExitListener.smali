.class public Lcom/game91/framework/listener/ExitListener;
.super Ljava/lang/Object;
.source "ExitListener.java"

# interfaces
.implements Lcom/game91/framework/core/IExit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doExit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
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
    .line 17
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

    .line 18
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0}, Lcom/game91/framework/core/IGameActivity;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 19
    invoke-interface {v0, p1, p2, p3}, Lcom/game91/framework/core/IGameActivity;->doExit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_0

    .line 22
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_1
    return-void
.end method
