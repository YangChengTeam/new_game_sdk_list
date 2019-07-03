.class final Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

.field private final synthetic v:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    iput-object p2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->v:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/f;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->v:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/f;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v1

    new-instance v2, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/g;

    invoke-direct {v2, p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/g;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;)V

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_0
    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->u:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_1
    return-void
.end method
