.class final Lcom/alipay/sdk/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/sdk/app/H5PayCallback;

.field final synthetic d:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask;Ljava/lang/String;ZLcom/alipay/sdk/app/H5PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/app/g;->d:Lcom/alipay/sdk/app/PayTask;

    iput-object p2, p0, Lcom/alipay/sdk/app/g;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/sdk/app/g;->b:Z

    iput-object p4, p0, Lcom/alipay/sdk/app/g;->c:Lcom/alipay/sdk/app/H5PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/sdk/app/g;->d:Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/alipay/sdk/app/g;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/sdk/app/g;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->h5Pay(Ljava/lang/String;Z)Lcom/alipay/sdk/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/g;->c:Lcom/alipay/sdk/app/H5PayCallback;

    invoke-interface {v1, v0}, Lcom/alipay/sdk/app/H5PayCallback;->onPayResult(Lcom/alipay/sdk/util/a;)V

    return-void
.end method
