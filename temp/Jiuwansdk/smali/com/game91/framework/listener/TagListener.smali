.class public Lcom/game91/framework/listener/TagListener;
.super Ljava/lang/Object;
.source "TagListener.java"

# interfaces
.implements Lcom/game91/framework/core/ITag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 23
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

    .line 24
    .local v0, "gameActivity":Lcom/game91/framework/core/GameSdk;
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lcom/game91/framework/core/GameSdk;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    .end local v0    # "gameActivity":Lcom/game91/framework/core/GameSdk;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 14
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

    .line 15
    .local v0, "gameActivity":Lcom/game91/framework/core/GameSdk;
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/GameSdk;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    .end local v0    # "gameActivity":Lcom/game91/framework/core/GameSdk;
    :cond_1
    return-void
.end method
