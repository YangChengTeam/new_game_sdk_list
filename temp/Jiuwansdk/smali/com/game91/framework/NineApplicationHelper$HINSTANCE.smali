.class public Lcom/game91/framework/NineApplicationHelper$HINSTANCE;
.super Ljava/lang/Object;
.source "NineApplicationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/NineApplicationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HINSTANCE"
.end annotation


# static fields
.field static final Hinstance:Lcom/game91/framework/NineApplicationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/game91/framework/NineApplicationHelper;

    invoke-direct {v0}, Lcom/game91/framework/NineApplicationHelper;-><init>()V

    sput-object v0, Lcom/game91/framework/NineApplicationHelper$HINSTANCE;->Hinstance:Lcom/game91/framework/NineApplicationHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
