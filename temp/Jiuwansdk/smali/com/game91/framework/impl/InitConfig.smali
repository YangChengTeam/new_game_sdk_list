.class public Lcom/game91/framework/impl/InitConfig;
.super Ljava/lang/Object;
.source "InitConfig.java"


# static fields
.field public static sSwitchLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/game91/framework/impl/InitConfig;->sSwitchLogin:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
