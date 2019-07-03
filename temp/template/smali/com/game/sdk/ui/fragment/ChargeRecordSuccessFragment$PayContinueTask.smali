.class Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;
.super Landroid/os/AsyncTask;
.source "ChargeRecordSuccessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayContinueTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/PayContinueInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public orderId:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "orderId"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 419
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->orderId:Ljava/lang/String;

    .line 420
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayContinueInfo;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 429
    new-instance v0, Lcom/game/sdk/engin/PayContinueEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->orderId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/engin/PayContinueEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 430
    .local v0, "payContinueEngin":Lcom/game/sdk/engin/PayContinueEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/PayContinueEngin;->run()Lcom/game/sdk/domain/PayContinueInfo;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/PayContinueInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/PayContinueInfo;)V
    .locals 8
    .param p1, "result"    # Lcom/game/sdk/domain/PayContinueInfo;

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 436
    if-eqz p1, :cond_6

    .line 437
    new-instance v3, Lcom/game/sdk/domain/PayRequestParams;

    invoke-direct {v3}, Lcom/game/sdk/domain/PayRequestParams;-><init>()V

    .line 438
    .local v3, "params":Lcom/game/sdk/domain/PayRequestParams;
    const-string v4, "1"

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->is_game_pay:Ljava/lang/String;

    .line 439
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->goods_id:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->goods_id:Ljava/lang/String;

    .line 440
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->card_id:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->card_id:Ljava/lang/String;

    .line 441
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->good_type_name:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->good_type_name:Ljava/lang/String;

    .line 442
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->pay_ways:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->pay_ways:Ljava/lang/String;

    .line 444
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->amount:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->amount:Ljava/lang/String;

    .line 445
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->role:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->role:Ljava/lang/String;

    .line 446
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->server:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->server:Ljava/lang/String;

    .line 447
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->appid:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->appid:Ljava/lang/String;

    .line 449
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->amount:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 450
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v5, p1, Lcom/game/sdk/domain/PayContinueInfo;->amount:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$10(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;F)V

    .line 453
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v5, p1, Lcom/game/sdk/domain/PayContinueInfo;->productname:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$11(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Ljava/lang/String;)V

    .line 454
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v5, p1, Lcom/game/sdk/domain/PayContinueInfo;->productname:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$12(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Ljava/lang/String;)V

    .line 455
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->productname:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->productname:Ljava/lang/String;

    .line 456
    iget-object v4, p1, Lcom/game/sdk/domain/PayContinueInfo;->attach:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->attach:Ljava/lang/String;

    .line 457
    const-string v4, ""

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->md5signstr:Ljava/lang/String;

    .line 458
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v5, p1, Lcom/game/sdk/domain/PayContinueInfo;->orderSn:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$13(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Ljava/lang/String;)V

    .line 459
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v5, p1, Lcom/game/sdk/domain/PayContinueInfo;->pay_ways:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$14(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Ljava/lang/String;)V

    .line 460
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v5, p1, Lcom/game/sdk/domain/PayContinueInfo;->attach:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$15(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Ljava/lang/String;)V

    .line 463
    :try_start_0
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$16(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$16(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "alipay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 464
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 468
    :cond_1
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$17(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 469
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$17(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$10(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;F)V

    .line 471
    :cond_2
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v5, p1, Lcom/game/sdk/domain/PayContinueInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v5, v5, Lcom/game/sdk/domain/PayParams;->partnerid:Ljava/lang/String;

    iget-object v6, p1, Lcom/game/sdk/domain/PayContinueInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v6, v6, Lcom/game/sdk/domain/PayParams;->email:Ljava/lang/String;

    iget-object v7, p1, Lcom/game/sdk/domain/PayContinueInfo;->params:Lcom/game/sdk/domain/PayParams;

    iget-object v7, v7, Lcom/game/sdk/domain/PayParams;->privatekey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payAlipayMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_3
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$16(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$16(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wxpay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 475
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$18(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)V

    .line 477
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$19(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v4

    const-string v5, "{orderid}"

    iput-object v5, v4, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    .line 478
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/game/sdk/ui/ChargeRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 479
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 480
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 482
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$19(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v4

    const-string v5, "13"

    iput-object v5, v4, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    .line 484
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$19(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$20(Ljava/lang/String;)V

    .line 486
    :cond_4
    invoke-static {}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$21()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/game/sdk/domain/PayRequestParams;->md5signstr:Ljava/lang/String;

    .line 487
    new-instance v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v6, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v6}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$22(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$21()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;-><init>(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$WxContinuePayTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "manager":Landroid/net/ConnectivityManager;
    .end local v3    # "params":Lcom/game/sdk/domain/PayRequestParams;
    :cond_5
    :goto_0
    return-void

    .line 489
    .restart local v3    # "params":Lcom/game/sdk/domain/PayRequestParams;
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 491
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    goto :goto_0

    .line 496
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "params":Lcom/game/sdk/domain/PayRequestParams;
    :cond_6
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 497
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->payGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/PayContinueInfo;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$PayContinueTask;->onPostExecute(Lcom/game/sdk/domain/PayContinueInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 425
    return-void
.end method
