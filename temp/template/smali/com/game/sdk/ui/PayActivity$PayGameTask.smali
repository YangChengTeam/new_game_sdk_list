.class Lcom/game/sdk/ui/PayActivity$PayGameTask;
.super Landroid/os/AsyncTask;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayGameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/PayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/PayRequestParams;)V
    .locals 0
    .param p2, "params"    # Lcom/game/sdk/domain/PayRequestParams;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 699
    iput-object p2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    .line 700
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayInfo;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    new-instance v1, Lcom/game/sdk/engin/ChargeEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/engin/ChargeEngin;-><init>(Landroid/content/Context;Lcom/game/sdk/domain/PayRequestParams;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/PayActivity;->access$11(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/engin/ChargeEngin;)V

    .line 710
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$12(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/engin/ChargeEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/ChargeEngin;->payGame()Lcom/game/sdk/domain/PayInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/PayInfo;)V
    .locals 7
    .param p1, "result"    # Lcom/game/sdk/domain/PayInfo;

    .prologue
    const/4 v4, 0x0

    .line 715
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 716
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 717
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 718
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/PayActivity;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 721
    :cond_0
    if-eqz p1, :cond_6

    iget v3, p1, Lcom/game/sdk/domain/PayInfo;->code:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 722
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v5, p1, Lcom/game/sdk/domain/PayInfo;->orderSn:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$13(Lcom/game/sdk/ui/PayActivity;Ljava/lang/String;)V

    .line 723
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->rmbMoney:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->rmbMoney:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :goto_0
    invoke-static {v5, v3}, Lcom/game/sdk/ui/PayActivity;->access$14(Lcom/game/sdk/ui/PayActivity;F)V

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u652f\u4ed8\u7684\u91d1\u989d---"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 727
    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    if-eqz v3, :cond_2

    .line 728
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 729
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "alipay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 730
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v4, v4, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iget-object v5, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v5, v5, Lcom/game/sdk/domain/PayParams;->email:Ljava/lang/String;

    iget-object v6, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayParams;->privatekey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/game/sdk/ui/PayActivity;->payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_1
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wxpay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 737
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$15(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$16(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 738
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$15(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v3

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v4, v4, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iput-object v4, v3, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 739
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$15(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v3

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->starttime:Ljava/lang/String;

    iput-object v4, v3, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 741
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$15(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$17(Ljava/lang/String;)V

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/game/sdk/ui/PayActivity;->access$18()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&mhtSignature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->rsmd5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&mhtSignType=MD5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, "mhtSignature":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$19(Lcom/game/sdk/ui/PayActivity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-virtual {v3, v4}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->setCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Ljava/lang/String;)V

    .line 745
    const-string v3, "1"

    sput-object v3, Lcom/game/sdk/ui/PayActivity;->isnowpay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v1    # "mhtSignature":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v3, v4

    .line 723
    goto/16 :goto_0

    .line 746
    .restart local v1    # "mhtSignature":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 753
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mhtSignature":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/game/sdk/domain/PaymentCallbackInfo;

    invoke-direct {v2}, Lcom/game/sdk/domain/PaymentCallbackInfo;-><init>()V

    .line 754
    .local v2, "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    iput v3, v2, Lcom/game/sdk/domain/PaymentCallbackInfo;->money:F

    .line 755
    const-string v3, "\u652f\u4ed8\u6210\u529f"

    iput-object v3, v2, Lcom/game/sdk/domain/PaymentCallbackInfo;->msg:Ljava/lang/String;

    .line 758
    new-instance v3, Lcom/game/sdk/ui/PayActivity$PayValidateTask;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity$PayValidateTask;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 760
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v3, :cond_5

    .line 761
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v3, v2}, Lcom/game/sdk/domain/OnPaymentListener;->paymentSuccess(Lcom/game/sdk/domain/PaymentCallbackInfo;)V

    .line 763
    :cond_5
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-virtual {v3}, Lcom/game/sdk/ui/PayActivity;->finishSuccess()V

    goto :goto_1

    .line 767
    .end local v2    # "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    :cond_6
    if-eqz p1, :cond_8

    iget v3, p1, Lcom/game/sdk/domain/PayInfo;->code:I

    const/16 v4, -0x63

    if-ne v3, v4, :cond_8

    .line 768
    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;

    :goto_2
    invoke-static {v4, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-virtual {v3}, Lcom/game/sdk/ui/PayActivity;->finishSuccess()V

    goto :goto_1

    .line 768
    :cond_7
    const-string v3, "\u8ba2\u5355\u9519\u8bef\uff0c\u8bf7\u5173\u95ed\u540e\u91cd\u8bd5"

    goto :goto_2

    .line 772
    :cond_8
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$PayGameTask;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/PayInfo;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/PayActivity$PayGameTask;->onPostExecute(Lcom/game/sdk/domain/PayInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 704
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 705
    return-void
.end method
