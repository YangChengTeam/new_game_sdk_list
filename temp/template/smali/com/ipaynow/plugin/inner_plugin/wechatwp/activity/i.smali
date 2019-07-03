.class final Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic y:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/h;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/h;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/i;->y:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/h;

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

    const-string v2, "\u5fae\u4fe1\u652f\u4ed8\u94fe\u63a5\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/i;->y:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/h;

    iget-object v0, v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/h;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/i;->y:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/h;

    iget-object v0, v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/h;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    return-void
.end method
