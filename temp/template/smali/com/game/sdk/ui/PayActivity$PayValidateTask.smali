.class Lcom/game/sdk/ui/PayActivity$PayValidateTask;
.super Landroid/os/AsyncTask;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayValidateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/PayValidateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/PayActivity;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity$PayValidateTask;)V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayValidateResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    new-instance v1, Lcom/game/sdk/engin/PayValidateEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$16(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/engin/PayValidateEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/engin/PayValidateEngin;)V

    .line 790
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$21(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/PayValidateEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/PayValidateEngin;->run()Lcom/game/sdk/domain/PayValidateResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayValidateResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/PayValidateResult;)V
    .locals 3
    .param p1, "payValidateResult"    # Lcom/game/sdk/domain/PayValidateResult;

    .prologue
    .line 795
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 796
    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/game/sdk/domain/PayValidateResult;->result:Z

    if-eqz v1, :cond_0

    .line 797
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 798
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p1, Lcom/game/sdk/domain/PayValidateResult;->pointMessage:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 799
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 800
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/PayActivity;->access$22(Lcom/game/sdk/ui/PayActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 810
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/PayActivity;->access$9(Lcom/game/sdk/ui/PayActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 803
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 804
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 805
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/PayActivity;->access$22(Lcom/game/sdk/ui/PayActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 807
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/PayValidateResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->onPostExecute(Lcom/game/sdk/domain/PayValidateResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 784
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 785
    return-void
.end method
