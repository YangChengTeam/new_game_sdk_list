.class public interface abstract Lcom/game91/framework/core/IUserChannel;
.super Ljava/lang/Object;
.source "IUserChannel.java"


# virtual methods
.method public abstract getChannelLoginInfo()Ljava/util/Map;
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
.end method

.method public abstract getLogoutListener()Lcom/game91/framework/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLogin()Z
.end method

.method public abstract setChannelLoginInfo(Ljava/util/Map;)V
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
.end method

.method public abstract setLogin(Z)V
.end method

.method public abstract setLogoutListener(Lcom/game91/framework/callback/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
