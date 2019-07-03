.class public final Lcom/ipaynow/plugin/view/template/a/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private cy:Lcom/ipaynow/plugin/view/template/a/a/b;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/view/template/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/a/a;->cy:Lcom/ipaynow/plugin/view/template/a/a/b;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/a;->cy:Lcom/ipaynow/plugin/view/template/a/a/b;

    invoke-interface {v0}, Lcom/ipaynow/plugin/view/template/a/a/b;->getCount()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/a;->cy:Lcom/ipaynow/plugin/view/template/a/a/b;

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/view/template/a/a/b;->d(I)Lcom/ipaynow/plugin/view/template/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/a;->cy:Lcom/ipaynow/plugin/view/template/a/a/b;

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/view/template/a/a/b;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/a;->cy:Lcom/ipaynow/plugin/view/template/a/a/b;

    invoke-interface {v0, p1, p2}, Lcom/ipaynow/plugin/view/template/a/a/b;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
