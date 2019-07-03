.class public interface abstract Lcom/game91/framework/core/IUser;
.super Ljava/lang/Object;
.source "IUser.java"


# virtual methods
.method public abstract doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
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
.end method

.method public abstract doLogout(Landroid/app/Activity;)V
.end method

.method public abstract getUserInfo()Lcom/game91/framework/callback/UserInfo;
.end method

.method public abstract setLogoutCallback(Lcom/game91/framework/callback/Callback;)V
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
