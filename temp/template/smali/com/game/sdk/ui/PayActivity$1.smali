.class Lcom/game/sdk/ui/PayActivity$1;
.super Landroid/os/Handler;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/PayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    .line 173
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_0
    :pswitch_0
    return-void

    .line 177
    :pswitch_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 178
    .local v11, "result":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 179
    const-string v0, ";"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, "result_obj":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v13, v0

    const/4 v1, 0x0

    aget-object v1, v13, v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aget-object v2, v13, v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 184
    .local v12, "resultStatus":I
    const/4 v0, 0x1

    aget-object v0, v13, v0

    const/4 v1, 0x1

    aget-object v1, v13, v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v13, v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, "memo":Ljava/lang/String;
    const/16 v0, 0x2328

    if-ne v12, v0, :cond_3

    .line 187
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rmb"

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v7}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v7

    float-to-int v7, v7

    invoke-static/range {v0 .. v7}, Lcom/ss/android/common/lib/EventUtils;->setPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 189
    const-string v0, "TeaAgent Pay True"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 191
    :cond_0
    new-instance v10, Lcom/game/sdk/domain/PaymentCallbackInfo;

    invoke-direct {v10}, Lcom/game/sdk/domain/PaymentCallbackInfo;-><init>()V

    .line 192
    .local v10, "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v0

    iput v0, v10, Lcom/game/sdk/domain/PaymentCallbackInfo;->money:F

    .line 193
    iput-object v8, v10, Lcom/game/sdk/domain/PaymentCallbackInfo;->msg:Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;

    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity$PayValidateTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v0, v10}, Lcom/game/sdk/domain/OnPaymentListener;->paymentSuccess(Lcom/game/sdk/domain/PaymentCallbackInfo;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/PayActivity;->finishSuccess()V

    .line 249
    .end local v8    # "memo":Ljava/lang/String;
    .end local v10    # "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    .end local v12    # "resultStatus":I
    .end local v13    # "result_obj":[Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    .restart local v8    # "memo":Ljava/lang/String;
    .restart local v12    # "resultStatus":I
    .restart local v13    # "result_obj":[Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 207
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rmb"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v7}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v7

    float-to-int v7, v7

    invoke-static/range {v0 .. v7}, Lcom/ss/android/common/lib/EventUtils;->setPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 208
    const-string v0, "TeaAgent Pay False"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 210
    :cond_4
    new-instance v9, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v9}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 211
    .local v9, "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    iput v12, v9, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 212
    iput-object v8, v9, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v0

    iput v0, v9, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 216
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v0, :cond_5

    .line 217
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v0, v9}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->show()V

    goto :goto_1

    .line 227
    .end local v8    # "memo":Ljava/lang/String;
    .end local v9    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    .end local v12    # "resultStatus":I
    .end local v13    # "result_obj":[Ljava/lang/String;
    :cond_6
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 228
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rmb"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v7}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v7

    float-to-int v7, v7

    invoke-static/range {v0 .. v7}, Lcom/ss/android/common/lib/EventUtils;->setPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 229
    const-string v0, "-----\u652f\u4ed8\u6210\u529f"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 232
    :cond_7
    new-instance v9, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v9}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 233
    .restart local v9    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    const v0, 0x54c5638

    iput v0, v9, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 234
    const-string v0, "\u65e0\u6cd5\u5224\u522b\u652f\u4ed8\u662f\u5426\u6210\u529f\uff01\u5177\u4f53\u8bf7\u67e5\u770b\u540e\u53f0\u6570\u636e"

    iput-object v0, v9, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$3(Lcom/game/sdk/ui/PayActivity;)F

    move-result v0

    iput v0, v9, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 238
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    if-eqz v0, :cond_8

    .line 239
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v0, v9}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/PayActivity;->payResultDialog:Lcom/game/sdk/view/PayResultDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/PayResultDialog;->show()V

    goto/16 :goto_1

    .line 255
    .end local v9    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    .end local v11    # "result":Ljava/lang/String;
    :pswitch_2
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 256
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$4(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_2
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 263
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$6(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_3
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$8(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/game/sdk/domain/GoagalInfo;->couponCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 258
    :cond_9
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$4(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$5(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_2

    .line 265
    :cond_a
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$6(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$7(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_3

    .line 273
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 274
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :cond_b
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :pswitch_4
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$9(Lcom/game/sdk/ui/PayActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/game/sdk/ui/PayActivity;->access$10(Lcom/game/sdk/ui/PayActivity;I)V

    .line 282
    new-instance v0, Lcom/game/sdk/ui/PayActivity$PayValidateTask;

    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$1;->this$0:Lcom/game/sdk/ui/PayActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;-><init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity$PayValidateTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/PayActivity$PayValidateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
