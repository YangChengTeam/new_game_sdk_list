.class public Lcom/duoyou/gamesdk/f/e;
.super Lcom/duoyou/gamesdk/c/base/a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/duoyou/gamesdk/f/entity/OrderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/duoyou/gamesdk/f/entity/OrderInfo;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/f/e;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/f/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/f/e;->a(Lcom/duoyou/gamesdk/f/entity/OrderInfo;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "order_num_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/e;->h:Landroid/widget/TextView;

    const-string v0, "money_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/e;->d:Landroid/widget/TextView;

    const-string v0, "pay_status_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/e;->e:Landroid/widget/TextView;

    const-string v0, "product_name_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/e;->f:Landroid/widget/TextView;

    const-string v0, "order_create_time_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/e;->g:Landroid/widget/TextView;

    const-string v0, "pay_way_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/e;->i:Landroid/widget/TextView;

    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/e;->a:Landroid/widget/ImageView;

    const-string v0, "kefu_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/e;->b:Landroid/widget/TextView;

    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/e;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/e$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/e$1;-><init>(Lcom/duoyou/gamesdk/f/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/f/e$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/e$2;-><init>(Lcom/duoyou/gamesdk/f/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/e$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/e$3;-><init>(Lcom/duoyou/gamesdk/f/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->j:Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/e;->j:Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getOrderNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/e;->j:Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getPayAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/e;->j:Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getProductIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/e;->j:Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/e;->j:Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getPayStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->ALIPAY:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/e;->j:Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getPayWay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->i:Landroid/widget/TextView;

    const-string v1, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/e;->i:Landroid/widget/TextView;

    const-string v1, "\u5fae\u4fe1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/duoyou/gamesdk/f/entity/OrderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/e;->j:Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/e;->f()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_floating_order_detail_layout"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/e;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/e;->e()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/e;->f()V

    return-void
.end method
