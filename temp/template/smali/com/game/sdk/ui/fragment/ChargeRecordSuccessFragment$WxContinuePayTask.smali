.class Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;
.super Landroid/os/AsyncTask;
.source "ChargeRecordSuccessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WxContinuePayTask"
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
.field public md5signstr:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "md5signstr"    # Ljava/lang/String;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 623
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->orderId:Ljava/lang/String;

    .line 624
    iput-object p3, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->md5signstr:Ljava/lang/String;

    .line 625
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayInfo;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    new-instance v1, Lcom/game/sdk/engin/WxChargeEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->orderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->md5signstr:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/game/sdk/engin/WxChargeEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$23(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Lcom/game/sdk/engin/WxChargeEngin;)V

    .line 635
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$24(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/engin/WxChargeEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/WxChargeEngin;->wxContinuePay()Lcom/game/sdk/domain/PayInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/PayInfo;)V
    .locals 5
    .param p1, "result"    # Lcom/game/sdk/domain/PayInfo;

    .prologue
    const/4 v3, 0x0

    .line 640
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 642
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 646
    :cond_0
    if-eqz p1, :cond_4

    iget v2, p1, Lcom/game/sdk/domain/PayInfo;->code:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 647
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, p1, Lcom/game/sdk/domain/PayInfo;->orderSn:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$13(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Ljava/lang/String;)V

    .line 648
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v2, p1, Lcom/game/sdk/domain/PayInfo;->rmbMoney:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/game/sdk/domain/PayInfo;->rmbMoney:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :goto_0
    invoke-static {v4, v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$10(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;F)V

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u652f\u4ed8\u7684\u91d1\u989d---"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$25(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 652
    iget-object v2, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    if-eqz v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$25(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 654
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$16(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wxpay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$19(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v3}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$22(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 657
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$19(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v3, v3, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    .line 658
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$19(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->starttime:Ljava/lang/String;

    iput-object v3, v2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    .line 660
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$19(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$20(Ljava/lang/String;)V

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$21()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&mhtSignature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->rsmd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mhtSignType=MD5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "mhtSignature":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$26(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v3}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->setCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Ljava/lang/String;)V

    .line 664
    const-string v2, "1"

    sput-object v2, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->isnowpay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v1    # "mhtSignature":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 648
    goto/16 :goto_0

    .line 665
    .restart local v1    # "mhtSignature":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 670
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mhtSignature":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v2

    const-string v3, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 674
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/PayInfo;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->onPostExecute(Lcom/game/sdk/domain/PayInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 629
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 630
    return-void
.end method
