.class public Lcom/game91/framework/http/UserBean$Data;
.super Ljava/lang/Object;
.source "UserBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/http/UserBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private token:Ljava/lang/String;

.field private user:Lcom/game91/framework/http/UserBean$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/game91/framework/http/UserBean$Data;)Lcom/game91/framework/http/UserBean$User;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/http/UserBean$Data;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/game91/framework/http/UserBean$Data;->user:Lcom/game91/framework/http/UserBean$User;

    return-object v0
.end method

.method static synthetic access$200(Lcom/game91/framework/http/UserBean$Data;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/http/UserBean$Data;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/game91/framework/http/UserBean$Data;->token:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getUser()Lcom/game91/framework/http/UserBean$User;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/game91/framework/http/UserBean$Data;->user:Lcom/game91/framework/http/UserBean$User;

    return-object v0
.end method
