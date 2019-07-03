.class public Lcom/game91/core/instant/virtualapk/Systems;
.super Ljava/lang/Object;
.source "Systems.java"


# static fields
.field static sHook:Z

.field static sHostContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/game91/core/instant/virtualapk/Systems;->sHook:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeHook()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/game91/core/instant/virtualapk/Systems;->sHook:Z

    .line 44
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/game91/core/instant/virtualapk/Systems;->sHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isHook()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/game91/core/instant/virtualapk/Systems;->sHook:Z

    return v0
.end method
