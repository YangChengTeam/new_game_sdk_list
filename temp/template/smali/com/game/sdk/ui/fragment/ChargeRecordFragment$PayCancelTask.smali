.class Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;
.super Landroid/os/AsyncTask;
.source "ChargeRecordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/ChargeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayCancelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public orderId:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/ChargeRecordFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "orderId"    # Ljava/lang/String;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 507
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->orderId:Ljava/lang/String;

    .line 508
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 517
    new-instance v0, Lcom/game/sdk/engin/PayCancelEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->orderId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/engin/PayCancelEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 518
    .local v0, "payCancelEngin":Lcom/game/sdk/engin/PayCancelEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/PayCancelEngin;->run()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 523
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 525
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->payCancelDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->payCancelDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->payCancelDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->cancelConfigDialog:Lcom/game/sdk/view/CancelConfigDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->cancelConfigDialog:Lcom/game/sdk/view/CancelConfigDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CancelConfigDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->cancelConfigDialog:Lcom/game/sdk/view/CancelConfigDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CancelConfigDialog;->dismiss()V

    .line 533
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 534
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 539
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->access$9(Lcom/game/sdk/ui/fragment/ChargeRecordFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    return-void

    .line 537
    :cond_2
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordFragment$PayCancelTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 512
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 513
    return-void
.end method
