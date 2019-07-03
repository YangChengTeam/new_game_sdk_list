.class public Lcom/feiyou/groupsdk/core/App;
.super Landroid/app/Application;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/duoyou/gamesdk/openapi/IDyApi;->init(Landroid/app/Application;)V

    .line 13
    return-void
.end method
