.class Lcom/duoyou/gamesdk/f/f$4;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/f;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/e",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/f/f;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/f/f$4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->c(Lcom/duoyou/gamesdk/f/f;)Lcom/duoyou/gamesdk/c/view/listview/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->stopLoadMore()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->c(Lcom/duoyou/gamesdk/f/f;)Lcom/duoyou/gamesdk/c/view/listview/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->stopRefresh()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "orderList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/f;->d(Lcom/duoyou/gamesdk/f/f;)I

    move-result v1

    if-ne v1, v7, :cond_1

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/f;->e(Lcom/duoyou/gamesdk/f/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/f;->b(Lcom/duoyou/gamesdk/f/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-direct {v5}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;-><init>()V

    const-string v6, "orderNum"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->setOrderNo(Ljava/lang/String;)V

    const-string v6, "cashFee"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->setPayAmount(Ljava/lang/String;)V

    const-string v6, "creatime"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->setCreateTime(Ljava/lang/String;)V

    const-string v6, "status"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->setPayStatus(Ljava/lang/String;)V

    const-string v6, "payType"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->setPayWay(Ljava/lang/String;)V

    const-string v6, "productIntro"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->setProductIntro(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v4, v5}, Lcom/duoyou/gamesdk/f/f;->a(Lcom/duoyou/gamesdk/f/f;Lcom/duoyou/gamesdk/f/entity/OrderInfo;)Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iput v7, v5, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->DATA_TYPE:I

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->f(Lcom/duoyou/gamesdk/f/f;)I

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->b(Lcom/duoyou/gamesdk/f/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->g(Lcom/duoyou/gamesdk/f/f;)Lcom/duoyou/gamesdk/f/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/a/a;->notifyDataSetChanged()V

    :goto_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->b(Lcom/duoyou/gamesdk/f/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->h(Lcom/duoyou/gamesdk/f/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0, v7}, Lcom/duoyou/gamesdk/f/f;->a(Lcom/duoyou/gamesdk/f/f;Z)Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->c(Lcom/duoyou/gamesdk/f/f;)Lcom/duoyou/gamesdk/c/view/listview/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setHintViewText()V

    const-string v0, "\u6ca1\u6709\u66f4\u591a\u6570\u636e\u4e86"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->h(Lcom/duoyou/gamesdk/f/f;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->c(Lcom/duoyou/gamesdk/f/f;)Lcom/duoyou/gamesdk/c/view/listview/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->stopLoadMore()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->c(Lcom/duoyou/gamesdk/f/f;)Lcom/duoyou/gamesdk/c/view/listview/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->stopRefresh()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->b(Lcom/duoyou/gamesdk/f/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->h(Lcom/duoyou/gamesdk/f/f;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/f/f;->a(Lcom/duoyou/gamesdk/f/f;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$4;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->h(Lcom/duoyou/gamesdk/f/f;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
