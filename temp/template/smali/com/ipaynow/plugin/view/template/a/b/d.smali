.class public final Lcom/ipaynow/plugin/view/template/a/b/d;
.super Lcom/ipaynow/plugin/view/template/a/b/a;


# instance fields
.field private bw:Lcom/ipaynow/plugin/view/b/a;

.field private cD:Landroid/view/View$OnClickListener;

.field private cE:I

.field private cF:I

.field private cG:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ipaynow/plugin/view/template/a/c/b;Landroid/view/View$OnClickListener;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ipaynow/plugin/view/template/a/b/a;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cD:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cE:I

    iput v1, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cF:I

    invoke-static {}, Lcom/ipaynow/plugin/view/b/a;->Y()Lcom/ipaynow/plugin/view/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->bw:Lcom/ipaynow/plugin/view/b/a;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/b/a;->getScreenHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cG:I

    invoke-virtual {p2}, Lcom/ipaynow/plugin/view/template/a/c/b;->af()I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cE:I

    iput-object p3, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cD:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private e(I)Landroid/view/ViewGroup;
    .locals 8

    const/16 v7, 0x14

    const/4 v6, 0x0

    const/4 v5, -0x1

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cG:I

    invoke-direct {v2, v5, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->data:Ljava/lang/Object;

    check-cast v0, Lcom/ipaynow/plugin/view/template/a/c/b;

    invoke-virtual {v0, p1}, Lcom/ipaynow/plugin/view/template/a/c/b;->f(I)Lcom/ipaynow/plugin/view/template/a/c/c;

    move-result-object v0

    new-instance v3, Lcom/ipaynow/plugin/view/b;

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/ipaynow/plugin/view/b;-><init>(Landroid/content/Context;Lcom/ipaynow/plugin/view/template/a/c/c;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v4, v7}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v4

    iget-object v5, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v5, v7}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v5

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cD:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/ipaynow/plugin/view/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a(ILandroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/view/template/a/b/d;->e(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final ae()Landroid/widget/LinearLayout;
    .locals 3

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cE:I

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/view/template/a/b/d;->e(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d(I)Lcom/ipaynow/plugin/view/template/a/a/a;
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->data:Ljava/lang/Object;

    check-cast v0, Lcom/ipaynow/plugin/view/template/a/c/b;

    iget v1, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cF:I

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/template/a/c/b;->f(I)Lcom/ipaynow/plugin/view/template/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->data:Ljava/lang/Object;

    check-cast v0, Lcom/ipaynow/plugin/view/template/a/c/b;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/template/a/c/b;->af()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget v0, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cE:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/ipaynow/plugin/view/template/a/b/d;->cF:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
