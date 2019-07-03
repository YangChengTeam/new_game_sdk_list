.class Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;
.super Landroid/os/AsyncTask;
.source "ChargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargeMoneyInitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/ChargeMoneyList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/ChargeActivity;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ChargeMoneyList;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    new-instance v1, Lcom/game/sdk/engin/ChargeMoneyEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-direct {v1, v2}, Lcom/game/sdk/engin/ChargeMoneyEngin;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/ChargeActivity;->access$12(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/ChargeMoneyEngin;)V

    .line 496
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/ChargeActivity;->access$13(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/ChargeMoneyEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/ChargeMoneyEngin;->run()Lcom/game/sdk/domain/ChargeMoneyList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ChargeMoneyList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/ChargeMoneyList;)V
    .locals 6
    .param p1, "result"    # Lcom/game/sdk/domain/ChargeMoneyList;

    .prologue
    const/4 v5, 0x1

    .line 501
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 502
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/ChargeActivity;->reloadPayInfoDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/ChargeActivity;->reloadPayInfoDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/ChargeActivity;->reloadPayInfoDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 507
    :cond_0
    if-eqz p1, :cond_1

    .line 509
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-boolean v4, p1, Lcom/game/sdk/domain/ChargeMoneyList;->isOpen:Z

    invoke-static {v3, v4}, Lcom/game/sdk/ui/ChargeActivity;->access$14(Lcom/game/sdk/ui/ChargeActivity;Z)V

    .line 510
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v4, p1, Lcom/game/sdk/domain/ChargeMoneyList;->mixMoney:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/game/sdk/ui/ChargeActivity;->access$15(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    .line 511
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v4, p1, Lcom/game/sdk/domain/ChargeMoneyList;->rateLow:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/game/sdk/ui/ChargeActivity;->access$16(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v4, p1, Lcom/game/sdk/domain/ChargeMoneyList;->rateHigh:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/game/sdk/ui/ChargeActivity;->access$17(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v4, p1, Lcom/game/sdk/domain/ChargeMoneyList;->returnRangeMoney:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/game/sdk/ui/ChargeActivity;->access$10(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    .line 515
    iget-object v3, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 516
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v4, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[I

    .line 519
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v4, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/game/sdk/ui/ChargeActivity;->realMoneys:[F

    .line 523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v1, v3, :cond_2

    .line 552
    .end local v1    # "i":I
    :cond_1
    :goto_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 553
    .local v2, "msg":Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 554
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/ChargeActivity;->access$19(Lcom/game/sdk/ui/ChargeActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 555
    return-void

    .line 524
    .end local v2    # "msg":Landroid/os/Message;
    .restart local v1    # "i":I
    :cond_2
    :try_start_1
    iget-object v3, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 525
    iget-object v3, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/ChargeMoneyInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/ChargeMoneyInfo;->chargeMoney:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 526
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v4, v3, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[I

    iget-object v3, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/ChargeMoneyInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/ChargeMoneyInfo;->chargeMoney:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v4, v1

    .line 527
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/game/sdk/ui/ChargeActivity;->access$18(Lcom/game/sdk/ui/ChargeActivity;Z)V

    .line 530
    :cond_3
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/ChargeActivity;->realMoneys:[F

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/ChargeActivity;->realMoneys:[F

    array-length v3, v3

    if-lez v3, :cond_4

    iget-object v3, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 531
    iget-object v3, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/ChargeMoneyInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/ChargeMoneyInfo;->returnGameMoney:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 532
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v4, v3, Lcom/game/sdk/ui/ChargeActivity;->realMoneys:[F

    iget-object v3, p1, Lcom/game/sdk/domain/ChargeMoneyList;->chargeMoneyList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/ChargeMoneyInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/ChargeMoneyInfo;->returnGameMoney:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v4, v1

    .line 533
    iget-object v3, p0, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/game/sdk/ui/ChargeActivity;->access$18(Lcom/game/sdk/ui/ChargeActivity;Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 523
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "pay init NumberFormatException --->"

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/ChargeMoneyList;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ChargeActivity$ChargeMoneyInitTask;->onPostExecute(Lcom/game/sdk/domain/ChargeMoneyList;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 490
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 491
    return-void
.end method
