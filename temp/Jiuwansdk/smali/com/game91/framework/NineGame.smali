.class public Lcom/game91/framework/NineGame;
.super Ljava/lang/Object;
.source "NineGame.java"

# interfaces
.implements Lcom/game91/framework/core/IGame;
.implements Lcom/game91/framework/core/IActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/NineGame$HINSTANCE;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/game91/framework/NineGame$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/game91/framework/NineGame$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/game91/framework/NineGame;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/game91/framework/NineGame;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/game91/framework/NineGame$HINSTANCE;->Hinstance:Lcom/game91/framework/NineGame;

    return-object v0
.end method


# virtual methods
.method public doExit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 1
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
    .line 37
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    invoke-interface {v0, p1, p2, p3}, Lcom/game91/framework/core/IGame;->doExit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 38
    return-void
.end method

.method public doInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 1
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
    .line 31
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    invoke-interface {v0, p1, p2, p3}, Lcom/game91/framework/core/IGame;->doInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 32
    return-void
.end method

.method public doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 1
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
    .line 52
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    invoke-interface {v0, p1, p2, p3}, Lcom/game91/framework/core/IGame;->doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 53
    return-void
.end method

.method public doLogout(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGame;->doLogout(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public doPay(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "payInfo"    # Lcom/game91/framework/callback/PayInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/PayInfo;",
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
    .line 42
    .local p3, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Lcom/game91/framework/callback/OrderInfo;>;"
    .local p4, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/game91/framework/core/IGame;->doPay(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 43
    return-void
.end method

.method public getUserInfo()Lcom/game91/framework/callback/UserInfo;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    invoke-interface {v0}, Lcom/game91/framework/core/IGame;->getUserInfo()Lcom/game91/framework/callback/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 122
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/game91/framework/core/IActivity;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 117
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/IActivity;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 118
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IActivity;->onCreate(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IActivity;->onDestroy(Landroid/app/Activity;)V

    .line 108
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/IActivity;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IActivity;->onPause(Landroid/app/Activity;)V

    .line 98
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .prologue
    .line 127
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/game91/framework/core/IActivity;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 128
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IActivity;->onRestart(Landroid/app/Activity;)V

    .line 88
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IActivity;->onResume(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IActivity;->onStart(Landroid/app/Activity;)V

    .line 93
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IActivity;->onStop(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method public setLogoutCallback(Lcom/game91/framework/callback/Callback;)V
    .locals 1
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
    .line 62
    .local p1, "onLogout":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGame;->setLogoutCallback(Lcom/game91/framework/callback/Callback;)V

    .line 63
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/game91/framework/core/IWindow$WindowType;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/game91/framework/core/IWindow$WindowType;

    .prologue
    .line 72
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/IGame;->show(Landroid/app/Activity;Lcom/game91/framework/core/IWindow$WindowType;)V

    .line 73
    return-void
.end method

.method public submitRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V
    .locals 1
    .param p1, "roleInfo"    # Lcom/game91/framework/callback/RoleInfo;

    .prologue
    .line 47
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGame;->submitRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V

    .line 48
    return-void
.end method
