.class Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;
.super Ljava/lang/Object;
.source "ScoreStoreFragment.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->loadScoreStoreData()V
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
        "Lcom/game/sdk/domain/ScoreStoreList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 157
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/ScoreStoreList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/ScoreStoreList;>;"
    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ScoreStoreList;

    iget-object v1, v1, Lcom/game/sdk/domain/ScoreStoreList;->list:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ScoreStoreList;

    iget-object v1, v1, Lcom/game/sdk/domain/ScoreStoreList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 136
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ScoreStoreList;

    iget-object v1, v1, Lcom/game/sdk/domain/ScoreStoreList;->list:Ljava/util/List;

    iput-object v1, v2, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStorePageList:Ljava/util/List;

    .line 137
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    iget-object v2, v1, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreInfoList:Ljava/util/List;

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ScoreStoreList;

    iget-object v1, v1, Lcom/game/sdk/domain/ScoreStoreList;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 144
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 145
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->access$3(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    :goto_1
    return-void

    .line 140
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ScoreStoreList;

    iget-object v1, v1, Lcom/game/sdk/domain/ScoreStoreList;->list:Ljava/util/List;

    iput-object v1, v2, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreInfoList:Ljava/util/List;

    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 149
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 150
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;->this$0:Lcom/game/sdk/ui/fragment/ScoreStoreFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->access$3(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
