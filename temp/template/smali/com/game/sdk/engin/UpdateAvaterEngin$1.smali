.class Lcom/game/sdk/engin/UpdateAvaterEngin$1;
.super Ljava/lang/Object;
.source "UpdateAvaterEngin.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/engin/UpdateAvaterEngin;->updateUserAvater()Lcom/game/sdk/domain/UpdateInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/game/sdk/net/listeners/Callback",
        "<",
        "Lcom/game/sdk/domain/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/engin/UpdateAvaterEngin;

.field private final synthetic val$updateInfoResult:Lcom/game/sdk/domain/UpdateInfoResult;


# direct methods
.method constructor <init>(Lcom/game/sdk/engin/UpdateAvaterEngin;Lcom/game/sdk/domain/UpdateInfoResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/engin/UpdateAvaterEngin$1;->this$0:Lcom/game/sdk/engin/UpdateAvaterEngin;

    iput-object p2, p0, Lcom/game/sdk/engin/UpdateAvaterEngin$1;->val$updateInfoResult:Lcom/game/sdk/domain/UpdateInfoResult;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/game/sdk/engin/UpdateAvaterEngin$1;->val$updateInfoResult:Lcom/game/sdk/domain/UpdateInfoResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    .line 84
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/game/sdk/engin/UpdateAvaterEngin$1;->val$updateInfoResult:Lcom/game/sdk/domain/UpdateInfoResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    .line 75
    iget-object v1, p0, Lcom/game/sdk/engin/UpdateAvaterEngin$1;->val$updateInfoResult:Lcom/game/sdk/domain/UpdateInfoResult;

    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v0, Lcom/game/sdk/domain/UpdateInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UpdateInfo;->pointMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v0, Lcom/game/sdk/domain/UpdateInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UpdateInfo;->pointMessage:Ljava/lang/String;

    :goto_0
    iput-object v0, v1, Lcom/game/sdk/domain/UpdateInfoResult;->pointMessage:Ljava/lang/String;

    .line 76
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v0, Lcom/game/sdk/domain/UpdateInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UpdateInfo;->face:Ljava/lang/String;

    iput-object v0, v1, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    .line 78
    :cond_0
    return-void

    .line 75
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
