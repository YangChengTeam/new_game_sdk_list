.class final Lcom/ipaynow/plugin/presenter/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/view/template/layout/f;


# instance fields
.field final synthetic aF:Lcom/ipaynow/plugin/presenter/b;

.field aG:J


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/presenter/b;)V
    .locals 2

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/d;->aF:Lcom/ipaynow/plugin/presenter/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ipaynow/plugin/presenter/d;->aG:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ipaynow/plugin/presenter/d;->aG:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/d;->aF:Lcom/ipaynow/plugin/presenter/b;

    iget-object v0, v0, Lcom/ipaynow/plugin/presenter/b;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v0, v0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    const-string v1, "\u6b63\u5728\u62c9\u8d77\u652f\u4ed8"

    invoke-interface {v0, v1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/d;->aF:Lcom/ipaynow/plugin/presenter/b;

    iget-object v0, v0, Lcom/ipaynow/plugin/presenter/b;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v0, v0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->loading:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->show()Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ipaynow/plugin/presenter/d;->aG:J

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    check-cast p1, Lcom/ipaynow/plugin/view/b;

    invoke-virtual {p1}, Lcom/ipaynow/plugin/view/b;->X()Lcom/ipaynow/plugin/view/template/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/d;->aF:Lcom/ipaynow/plugin/presenter/b;

    iget-object v1, v1, Lcom/ipaynow/plugin/presenter/b;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/template/a/c/c;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->g(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
