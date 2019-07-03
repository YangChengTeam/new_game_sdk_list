.class public Lcom/game91/framework/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static final sHttp:Lcom/game91/framework/core/IHttp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/game91/framework/impl/HttpImpl;

    invoke-direct {v0}, Lcom/game91/framework/impl/HttpImpl;-><init>()V

    sput-object v0, Lcom/game91/framework/HttpManager;->sHttp:Lcom/game91/framework/core/IHttp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static api()Lcom/game91/framework/core/IHttp;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/game91/framework/HttpManager;->sHttp:Lcom/game91/framework/core/IHttp;

    return-object v0
.end method
