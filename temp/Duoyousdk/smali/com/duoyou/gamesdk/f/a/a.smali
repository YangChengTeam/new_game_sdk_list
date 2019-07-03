.class public Lcom/duoyou/gamesdk/f/a/a;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSectionListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/f/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/f/entity/OrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/f/entity/OrderInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/duoyou/gamesdk/f/a/a;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a/a;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/duoyou/gamesdk/f/entity/OrderInfo;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/f/a/a;->a(I)Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    iget v0, v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->DATA_TYPE:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    iget v2, v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->DATA_TYPE:I

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    new-instance v2, Lcom/duoyou/gamesdk/f/a/a$a;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/f/a/a$a;-><init>()V

    iget-object v3, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    const-string v5, "dy_floating_order_item_seletion"

    invoke-static {v4, v5}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    const-string v3, "year_tv"

    invoke-static {v1, v3}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/f/a/a$a;->a(Lcom/duoyou/gamesdk/f/a/a$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_0
    :goto_0
    iget v2, v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->DATA_TYPE:I

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/a/a$a;->a(Lcom/duoyou/gamesdk/f/a/a$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getFormatCreateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoyou/gamesdk/f/a/a$a;

    goto :goto_0

    :cond_3
    iget v2, v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->DATA_TYPE:I

    if-ne v2, v6, :cond_0

    if-nez p2, :cond_4

    new-instance v2, Lcom/duoyou/gamesdk/f/a/a$a;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/f/a/a$a;-><init>()V

    iget-object v3, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    const-string v5, "dy_floating_order_item"

    invoke-static {v4, v5}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    const-string v3, "month_day_tv"

    invoke-static {v1, v3}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/f/a/a$a;->b(Lcom/duoyou/gamesdk/f/a/a$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    const-string v3, "month_tv"

    invoke-static {v1, v3}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/f/a/a$a;->c(Lcom/duoyou/gamesdk/f/a/a$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    const-string v3, "product_tv"

    invoke-static {v1, v3}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/f/a/a$a;->d(Lcom/duoyou/gamesdk/f/a/a$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    const-string v3, "status_tv"

    invoke-static {v1, v3}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/f/a/a$a;->e(Lcom/duoyou/gamesdk/f/a/a$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/a/a;->b:Landroid/content/Context;

    const-string v3, "money_tv"

    invoke-static {v1, v3}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/f/a/a$a;->f(Lcom/duoyou/gamesdk/f/a/a$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoyou/gamesdk/f/a/a$a;

    goto/16 :goto_0

    :cond_5
    iget v2, v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->DATA_TYPE:I

    if-ne v2, v6, :cond_1

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/a/a$a;->b(Lcom/duoyou/gamesdk/f/a/a$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/a/a$a;->c(Lcom/duoyou/gamesdk/f/a/a$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/a/a$a;->d(Lcom/duoyou/gamesdk/f/a/a$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getProductIntro()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/a/a$a;->e(Lcom/duoyou/gamesdk/f/a/a$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getPayStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/a/a$a;->f(Lcom/duoyou/gamesdk/f/a/a$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getPayAmount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isItemViewTypePinned(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
