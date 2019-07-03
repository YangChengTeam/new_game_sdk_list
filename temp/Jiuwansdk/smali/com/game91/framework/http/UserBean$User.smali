.class public Lcom/game91/framework/http/UserBean$User;
.super Ljava/lang/Object;
.source "UserBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/http/UserBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;
    .annotation runtime Lcom/game91/library/gson/annotations/SerializedName;
        value = "__password"
    .end annotation
.end field

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/game91/framework/http/UserBean$User;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/http/UserBean$User;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/game91/framework/http/UserBean$User;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/game91/framework/http/UserBean$User;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/http/UserBean$User;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/game91/framework/http/UserBean$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/game91/framework/http/UserBean$User;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/http/UserBean$User;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/game91/framework/http/UserBean$User;->password:Ljava/lang/String;

    return-object v0
.end method
