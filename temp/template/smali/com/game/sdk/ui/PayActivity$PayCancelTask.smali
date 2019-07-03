.class Lcom/game/sdk/ui/PayActivity$PayCancelTask;
.super Landroid/os/AsyncTask;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/PayActivity;
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
.field public mType:I

.field public orderId:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;I)V
    .locals 0
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1066
    iput-object p2, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->orderId:Ljava/lang/String;

    .line 1067
    iput p3, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->mType:I

    .line 1068
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1077
    new-instance v0, Lcom/game/sdk/engin/PayCancelEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->orderId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/engin/PayCancelEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1078
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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1083
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mType --->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 1088
    iget v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->mType:I

    if-nez v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/ui/PayActivity;->access$24(Lcom/game/sdk/ui/PayActivity;I)V

    .line 1092
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->dismiss()V

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1098
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/game/sdk/ui/PayActivity;->access$24(Lcom/game/sdk/ui/PayActivity;I)V

    .line 1099
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->dismiss()V

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/PayActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/PayActivity$PayCancelTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 1072
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1073
    return-void
.end method
