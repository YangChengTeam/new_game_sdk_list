.class Lcom/duoyou/gamesdk/f/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/f/f;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/f$3;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/f$3;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/f;->b(Lcom/duoyou/gamesdk/f/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/f$3;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/f;->b(Lcom/duoyou/gamesdk/f/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getOrderNo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/f$3;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/f/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/f/e;->a(Landroid/content/Context;Lcom/duoyou/gamesdk/f/entity/OrderInfo;)V

    :cond_0
    return-void
.end method
