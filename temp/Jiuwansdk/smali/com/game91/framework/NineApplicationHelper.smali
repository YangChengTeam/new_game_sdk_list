.class public Lcom/game91/framework/NineApplicationHelper;
.super Ljava/lang/Object;
.source "NineApplicationHelper.java"

# interfaces
.implements Lcom/game91/framework/core/IApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/NineApplicationHelper$HINSTANCE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/game91/framework/core/IApplication;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/game91/framework/NineApplicationHelper$HINSTANCE;->Hinstance:Lcom/game91/framework/NineApplicationHelper;

    return-object v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 23
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Application:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IApplication;->attachBaseContext(Landroid/app/Application;)V

    .line 24
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 38
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Application:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/IApplication;->onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 39
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 28
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Application:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IApplication;->onCreate(Landroid/app/Application;)V

    .line 29
    return-void
.end method

.method public onLowMemory(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 43
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Application:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IApplication;->onLowMemory(Landroid/app/Application;)V

    .line 44
    return-void
.end method

.method public onTerminate(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 33
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Application:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IApplication;->onTerminate(Landroid/app/Application;)V

    .line 34
    return-void
.end method

.method public onTrimMemory(Landroid/app/Application;I)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "level"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Application:Lcom/game91/framework/core/IApplication;

    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/IApplication;->onTrimMemory(Landroid/app/Application;I)V

    .line 49
    return-void
.end method
