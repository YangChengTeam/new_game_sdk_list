.class Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;
.super Landroid/os/AsyncTask;
.source "ChargeRecordFailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargeRecordTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/game/sdk/domain/ChargeRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;)Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ChargeRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->access$7(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Lcom/game/sdk/engin/ChargeRecordEngin;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    invoke-static {v3}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->access$8(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)I

    move-result v3

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    .line 335
    new-instance v7, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask$1;

    invoke-direct {v7, p0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask$1;-><init>(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;)V

    .line 334
    invoke-virtual/range {v0 .. v7}, Lcom/game/sdk/engin/ChargeRecordEngin;->getChargeRecordList(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V

    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ChargeRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ChargeRecord;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 365
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    iput-object p1, v1, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->chargeRecordList:Ljava/util/List;

    .line 369
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 370
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 371
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->access$9(Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 329
    return-void
.end method
