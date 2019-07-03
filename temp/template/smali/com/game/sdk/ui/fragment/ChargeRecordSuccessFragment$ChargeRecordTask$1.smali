.class Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask$1;
.super Ljava/lang/Object;
.source "ChargeRecordSuccessFragment.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;
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
        "Lcom/game/sdk/domain/ChargeRecordList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask$1;->this$1:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 356
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/ChargeRecordList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/ChargeRecordList;>;"
    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ChargeRecordList;

    iget-object v1, v1, Lcom/game/sdk/domain/ChargeRecordList;->chargeRecordList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask$1;->this$1:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;->access$2(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;)Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    move-result-object v2

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ChargeRecordList;

    iget-object v1, v1, Lcom/game/sdk/domain/ChargeRecordList;->chargeRecordList:Ljava/util/List;

    iput-object v1, v2, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->chargeRecordList:Ljava/util/List;

    .line 343
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 344
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 345
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask$1;->this$1:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;->access$2(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;)Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$9(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    :goto_0
    return-void

    .line 347
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 348
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 349
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask$1;->this$1:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;->access$2(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$ChargeRecordTask;)Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$9(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
