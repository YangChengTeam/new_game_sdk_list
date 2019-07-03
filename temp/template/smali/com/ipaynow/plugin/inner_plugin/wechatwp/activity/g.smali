.class final Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic w:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/g;->w:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
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

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/g;->w:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/g;->w:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    return-void
.end method
