.class final Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic v:Ljava/util/ArrayList;

.field final synthetic w:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/f;->w:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;

    iput-object p2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/f;->v:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/f;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/f;->w:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/e;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/d;)Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
