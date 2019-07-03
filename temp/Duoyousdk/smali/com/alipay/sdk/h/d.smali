.class final Lcom/alipay/sdk/h/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/h/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/h/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/h/d;->a:Lcom/alipay/sdk/h/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/h/d;->a:Lcom/alipay/sdk/h/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/h/a;->b()V

    return-void
.end method
