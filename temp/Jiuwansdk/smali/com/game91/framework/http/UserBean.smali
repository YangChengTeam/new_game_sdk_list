.class public Lcom/game91/framework/http/UserBean;
.super Ljava/lang/Object;
.source "UserBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/http/UserBean$User;,
        Lcom/game91/framework/http/UserBean$Data;
    }
.end annotation


# static fields
.field public static final SUCCESS:I


# instance fields
.field private code:I

.field private data:Lcom/game91/framework/http/UserBean$Data;
    .annotation runtime Lcom/game91/library/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/game91/framework/http/UserBean;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/game91/framework/http/UserBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/game91/framework/http/UserBean;->data:Lcom/game91/framework/http/UserBean$Data;

    invoke-static {v0}, Lcom/game91/framework/http/UserBean$Data;->access$000(Lcom/game91/framework/http/UserBean$Data;)Lcom/game91/framework/http/UserBean$User;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/http/UserBean$User;->access$400(Lcom/game91/framework/http/UserBean$User;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 59
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/game91/framework/http/UserBean;->data:Lcom/game91/framework/http/UserBean$Data;

    invoke-static {v0}, Lcom/game91/framework/http/UserBean$Data;->access$200(Lcom/game91/framework/http/UserBean$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/game91/framework/http/UserBean;->data:Lcom/game91/framework/http/UserBean$Data;

    invoke-static {v0}, Lcom/game91/framework/http/UserBean$Data;->access$000(Lcom/game91/framework/http/UserBean$Data;)Lcom/game91/framework/http/UserBean$User;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/http/UserBean$User;->access$100(Lcom/game91/framework/http/UserBean$User;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 33
    const-string v0, ""

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/game91/framework/http/UserBean;->data:Lcom/game91/framework/http/UserBean$Data;

    invoke-static {v0}, Lcom/game91/framework/http/UserBean$Data;->access$000(Lcom/game91/framework/http/UserBean$Data;)Lcom/game91/framework/http/UserBean$User;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/http/UserBean$User;->access$300(Lcom/game91/framework/http/UserBean$User;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 48
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    goto :goto_1
.end method
