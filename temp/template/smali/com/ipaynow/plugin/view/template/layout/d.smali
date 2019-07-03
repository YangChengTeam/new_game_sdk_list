.class public Lcom/ipaynow/plugin/view/template/layout/d;
.super Lcom/ipaynow/plugin/view/template/layout/a;


# instance fields
.field private az:Ljava/lang/String;

.field private cr:Landroid/widget/LinearLayout;

.field private cs:Landroid/widget/LinearLayout;

.field private ct:Landroid/widget/FrameLayout;

.field private cu:Landroid/widget/LinearLayout;

.field private cv:Landroid/widget/LinearLayout;

.field private mhtOrderAmt:Ljava/lang/String;

.field private mhtOrderName:Ljava/lang/String;

.field private mhtOrderNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/view/template/layout/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cr:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cs:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->ct:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cu:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cv:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/ipaynow/plugin/view/template/layout/d;->az:Ljava/lang/String;

    iput-object p3, p0, Lcom/ipaynow/plugin/view/template/layout/d;->mhtOrderNo:Ljava/lang/String;

    iput-object p4, p0, Lcom/ipaynow/plugin/view/template/layout/d;->mhtOrderName:Ljava/lang/String;

    iput-object p5, p0, Lcom/ipaynow/plugin/view/template/layout/d;->mhtOrderAmt:Ljava/lang/String;

    return-void
.end method

.method private addBodyBottomLout(Landroid/widget/LinearLayout;)V
    .locals 9

    const/4 v8, 0x0

    const-wide v6, 0x3fa47ae147ae147bL    # 0.04

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->ct:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->ct:Landroid/widget/FrameLayout;

    const-string v1, "#FFF9FAFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sget v1, Lcom/ipaynow/plugin/view/template/layout/d;->cp:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    sget v2, Lcom/ipaynow/plugin/view/template/layout/d;->co:I

    int-to-double v2, v2

    const-wide v4, 0x3fa26e978d4fdf3bL    # 0.036

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sget v3, Lcom/ipaynow/plugin/view/template/layout/d;->cp:I

    int-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/d;->ct:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addBodyTopLout(Landroid/widget/LinearLayout;)V
    .locals 8

    const-wide v6, 0x3fa47ae147ae147bL    # 0.04

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cs:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/ipaynow/plugin/view/template/layout/d;->cp:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    sget v2, Lcom/ipaynow/plugin/view/template/layout/d;->co:I

    int-to-double v2, v2

    const-wide v4, 0x3fa26e978d4fdf3bL    # 0.036

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sget v3, Lcom/ipaynow/plugin/view/template/layout/d;->cp:I

    int-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/template/layout/d;->setShodow_body1()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ipaynow/plugin/view/template/layout/d;->setBody1Item(Landroid/widget/FrameLayout;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cs:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private generateOrderShowData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/ipaynow/plugin/view/template/a/c/a;

    const-string v2, "\u5546\u6237\u540d\u79f0"

    invoke-direct {v1, v2, p1}, Lcom/ipaynow/plugin/view/template/a/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/ipaynow/plugin/view/template/a/c/a;

    const-string v2, "\u8ba2\u5355\u540d\u79f0"

    invoke-direct {v1, v2, p3}, Lcom/ipaynow/plugin/view/template/a/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/ipaynow/plugin/view/template/a/c/a;

    const-string v2, "\u8ba2\u5355\u7f16\u53f7"

    invoke-direct {v1, v2, p2}, Lcom/ipaynow/plugin/view/template/a/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private setBody1Item(Landroid/widget/FrameLayout;)V
    .locals 12

    const/16 v11, 0x18

    const/16 v10, 0x8

    const/4 v9, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/ipaynow/plugin/view/a;

    iget-object v3, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cg:Landroid/app/Activity;

    const-string v4, "\u8ba2\u5355\u8be6\u60c5"

    iget-object v5, p0, Lcom/ipaynow/plugin/view/template/layout/d;->mhtOrderAmt:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/ipaynow/plugin/view/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/layout/d;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v4, v10}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/layout/d;->az:Ljava/lang/String;

    iget-object v5, p0, Lcom/ipaynow/plugin/view/template/layout/d;->mhtOrderNo:Ljava/lang/String;

    iget-object v6, p0, Lcom/ipaynow/plugin/view/template/layout/d;->mhtOrderName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/ipaynow/plugin/view/template/layout/d;->generateOrderShowData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/ipaynow/plugin/view/template/a/b/b;

    iget-object v6, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cg:Landroid/app/Activity;

    invoke-direct {v5, v6, v4}, Lcom/ipaynow/plugin/view/template/a/b/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/ipaynow/plugin/view/template/layout/d;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v6, v11}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v6

    iget-object v7, p0, Lcom/ipaynow/plugin/view/template/layout/d;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v7, v11}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v7

    invoke-virtual {v4, v6, v8, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Lcom/ipaynow/plugin/view/template/a/b/b;->ad()Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/ipaynow/plugin/view/template/layout/d;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v3, v10}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v3

    invoke-virtual {v2, v8, v8, v8, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected addBody(Landroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method protected addBody(Landroid/widget/LinearLayout;Z)V
    .locals 6

    const/4 v2, -0x1

    const-string v0, "#FFF9FAFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/view/template/layout/d;->addBodyTopLout(Landroid/widget/LinearLayout;)V

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/view/template/layout/d;->addBodyBottomLout(Landroid/widget/LinearLayout;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/ipaynow/plugin/view/template/layout/d;->co:I

    int-to-double v2, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/template/layout/d;->addFoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getBodyBottomLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getBodyFoot()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cv:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getBodyTopBottomLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->ct:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getBodyTopLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cr:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getBodyTopTopLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cs:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRootLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/d;->ch:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected setShodow_body1()Landroid/widget/FrameLayout;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/ipaynow/plugin/view/d/d;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/view/d/d;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget-object v2, Lcom/ipaynow/plugin/view/d/e;->rect:Lcom/ipaynow/plugin/view/d/e;

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/d;->a(Lcom/ipaynow/plugin/view/d/e;)V

    sget-object v2, Lcom/ipaynow/plugin/view/d/f;->z_depth2:Lcom/ipaynow/plugin/view/d/f;

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/d;->a(Lcom/ipaynow/plugin/view/d/f;)V

    sget-object v2, Lcom/ipaynow/plugin/view/d/g;->z_depth2:Lcom/ipaynow/plugin/view/d/g;

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/d;->a(Lcom/ipaynow/plugin/view/d/g;)V

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/d/d;->ao()V

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/d/d;->ap()V

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/d;->cs:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
