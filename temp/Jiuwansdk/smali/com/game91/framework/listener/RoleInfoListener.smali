.class public Lcom/game91/framework/listener/RoleInfoListener;
.super Ljava/lang/Object;
.source "RoleInfoListener.java"

# interfaces
.implements Lcom/game91/framework/core/IRoleInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRoleInfo()Lcom/game91/framework/callback/RoleInfo;
    .locals 3

    .prologue
    .line 16
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

    .line 17
    .local v0, "gameActivity":Lcom/game91/framework/core/GameSdk;
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->getRoleInfo()Lcom/game91/framework/callback/RoleInfo;

    move-result-object v1

    .line 21
    .end local v0    # "gameActivity":Lcom/game91/framework/core/GameSdk;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V
    .locals 3
    .param p1, "roleInfo"    # Lcom/game91/framework/callback/RoleInfo;

    .prologue
    .line 26
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

    .line 27
    .local v0, "gameActivity":Lcom/game91/framework/core/GameSdk;
    invoke-interface {v0}, Lcom/game91/framework/core/GameSdk;->onlyActivityEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-interface {v0, p1}, Lcom/game91/framework/core/GameSdk;->setRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V

    goto :goto_0

    .line 31
    .end local v0    # "gameActivity":Lcom/game91/framework/core/GameSdk;
    :cond_1
    return-void
.end method
