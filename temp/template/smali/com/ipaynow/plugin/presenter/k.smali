.class final Lcom/ipaynow/plugin/presenter/k;
.super Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;


# instance fields
.field final synthetic this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-direct {p0}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/presenter/k;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V

    return-void
.end method


# virtual methods
.method public final handleError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    const-string v0, "A002"

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    return-void

    :cond_0
    const-string v0, "A003"

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final handleNetTimeOutError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE002:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE002:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    return-void
.end method

.method public final handlePre(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;->handlePre(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v0, v0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->dismiss()V

    return-void
.end method

.method public final handleSuccess(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v1, "payVoucher"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->UPMP:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "00"

    invoke-static {v1, v2, v3, v0, v4}, Lcom/unionpay/UPPayAssistEx;->startPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->ALIPAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".wxapi.WXPayEntryActivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "appId"

    iget-object v4, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v4}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v4

    iget-object v4, v4, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mhtOrderNo"

    iget-object v4, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v4}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->f(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "payVoucher"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v2, v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V

    :cond_3
    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_WAP_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->BAIDU_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v2

    iget-object v3, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    new-instance v4, Lcom/ipaynow/plugin/presenter/PayMethodActivity$BaiduPayCallBack;

    iget-object v5, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/ipaynow/plugin/presenter/PayMethodActivity$BaiduPayCallBack;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Lcom/ipaynow/plugin/presenter/PayMethodActivity$BaiduPayCallBack;)V

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/baidu/paysdk/api/BaiduPay;->doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->QQ_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const-class v3, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "appId"

    iget-object v4, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v4}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v4

    iget-object v4, v4, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mhtOrderNo"

    iget-object v4, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v4}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->f(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "payVoucher"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ipaynow"

    const-string v3, "\u94f6\u8054\u52a8\u6001\u5e93\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v2, "ipaynow"

    const-string v3, "\u767e\u5ea6\u94b1\u5305\u52a8\u6001\u5e93\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/k;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    goto/16 :goto_2
.end method
