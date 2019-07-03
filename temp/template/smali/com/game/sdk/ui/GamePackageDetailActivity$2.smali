.class Lcom/game/sdk/ui/GamePackageDetailActivity$2;
.super Ljava/lang/Object;
.source "GamePackageDetailActivity.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/GamePackageDetailActivity;->loadGamePackageDetailData()V
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
        "Lcom/game/sdk/domain/GamePackageDetailList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 208
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/GamePackageDetailList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/GamePackageDetailList;>;"
    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/GamePackageDetailList;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackageDetailList;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/GamePackageDetailList;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackageDetailList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 192
    iget-object v2, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/GamePackageDetailList;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackageDetailList;->list:Ljava/util/List;

    iput-object v1, v2, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    .line 194
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 195
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 196
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$11(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    :goto_0
    return-void

    .line 199
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 200
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 201
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$11(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
