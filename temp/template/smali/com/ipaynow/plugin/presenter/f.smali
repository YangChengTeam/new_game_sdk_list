.class final Lcom/ipaynow/plugin/presenter/f;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic aH:Ljava/lang/String;

.field final synthetic this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/f;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iput-object p2, p0, Lcom/ipaynow/plugin/presenter/f;->aH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/f;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/f;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/f;->aH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->payV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/f;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->g(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/f;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->g(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "ipaynow"

    const-string v1, "\u8c03\u8d77\u652f\u4ed8\u5b9djar\u9519\u8bef"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
