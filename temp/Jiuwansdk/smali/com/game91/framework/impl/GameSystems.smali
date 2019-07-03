.class public Lcom/game91/framework/impl/GameSystems;
.super Ljava/lang/Object;
.source "GameSystems.java"


# static fields
.field static sApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/game91/framework/impl/GameSystems;->sApplication:Landroid/app/Application;

    return-object v0
.end method
