.class final Lcom/alipay/sdk/app/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/c;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/app/e;->a:Lcom/alipay/sdk/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/sdk/app/e;->a:Lcom/alipay/sdk/app/c;

    iget-object v0, v0, Lcom/alipay/sdk/app/c;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object v0, p0, Lcom/alipay/sdk/app/e;->a:Lcom/alipay/sdk/app/c;

    iget-object v0, v0, Lcom/alipay/sdk/app/c;->b:Lcom/alipay/sdk/app/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/b;->a(Lcom/alipay/sdk/app/b;Z)Z

    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/app/e;->a:Lcom/alipay/sdk/app/c;

    iget-object v0, v0, Lcom/alipay/sdk/app/c;->b:Lcom/alipay/sdk/app/b;

    invoke-static {v0}, Lcom/alipay/sdk/app/b;->a(Lcom/alipay/sdk/app/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
