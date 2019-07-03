.class final Lcom/ipaynow/plugin/presenter/j;
.super Lcom/ipaynow/plugin/presenter/i;


# instance fields
.field final synthetic this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/j;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ipaynow/plugin/presenter/i;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/presenter/j;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V

    return-void
.end method


# virtual methods
.method public final handleSuccess(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 6

    iget-object v2, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v0, "tn"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "appId"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ipaynow/plugin/presenter/j;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v3, v3, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-interface {v3}, Lcom/ipaynow/plugin/view/IpaynowLoading;->dismiss()V

    const-string v3, "12"

    iget-object v4, p0, Lcom/ipaynow/plugin/presenter/j;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v4}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ipaynow/plugin/presenter/j;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v3, v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V

    :cond_0
    const-string v3, "13"

    iget-object v4, p0, Lcom/ipaynow/plugin/presenter/j;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v4}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ipaynow/plugin/presenter/j;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const-class v5, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "tn"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mhtOrderNo"

    const-string v0, "mhtOrderNo"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "respOutputType"

    const-string v0, "respOutputType"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/j;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/j;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method
