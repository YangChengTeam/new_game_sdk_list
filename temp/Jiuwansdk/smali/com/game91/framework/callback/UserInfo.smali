.class public Lcom/game91/framework/callback/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/game91/framework/callback/UserInfo;->userId:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/game91/framework/callback/UserInfo;->token:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/game91/framework/callback/UserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/game91/framework/callback/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method
